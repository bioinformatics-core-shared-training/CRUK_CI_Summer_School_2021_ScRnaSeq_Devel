# this script prepares the Caron data for the challenge and saves it as an RDS
# file that the students can load at the start of the challenge.

library(DropletUtils)
library(ensembldb)
library(AnnotationHub)
library(BiocParallel)
library(tidyverse)

# Parallel params
bp.params <- MulticoreParam(workers = 7)

# Load sample sheet

samplesheet <- read_tsv("Data/sample_sheet.tsv")

# Caron file paths
list_of_files <- samplesheet %>%
    filter(DatasetName == "Caron") %>%  
    mutate(File=str_c("CellRanger_Outputs/", 
                      SampleId,
                      "/outs/filtered_feature_bc_matrix")) %>%
    pull(File, SampleId)
    
# Read the data in
sce <- read10xCounts(list_of_files, col.names=TRUE, BPPARAM = bp.params)

# Add meta data and fix the cell barcodes

colData(sce) <- colData(sce) %>% 
    as.data.frame() %>%
    rownames_to_column("RowName") %>% 
    mutate(SampleNum = str_extract(RowName, "^[0-9]+")) %>%
    mutate(Barcode = str_replace(Barcode, "1$", SampleNum)) %>%
    left_join(samplesheet, by=c(Sample="SampleId")) %>%
    rename(SampleId=Sample) %>% 
    rename(Sample=SampleName) %>% 
    mutate(Sample = case_when(
        SampleId == "SRR9264351" ~ str_c(Sample, "a"),
        SampleId == "SRR9264352" ~ str_c(Sample, "b"),
        TRUE ~ Sample)) %>% 
    column_to_rownames("RowName") %>% 
    select(Sample, Barcode, SampleId, SampleGroup, DatasetName) %>%
    DataFrame()

# Annotate with Chromosomes names

ah <- AnnotationHub()
ens.mm.98 <- query(ah, c("Homo sapiens", "EnsDb", 98))[[1]] 

genes <- rowData(sce)$ID
gene_annot <- AnnotationDbi::select(ens.mm.98, 
                                    keys = genes,
                                    keytype = "GENEID",
                                    columns = c("GENEID", "SEQNAME")) %>%
    set_names(c("ID", "Chromosome"))
rowData(sce) <- merge(rowData(sce), gene_annot, by = "ID", sort=FALSE)
rownames(rowData(sce)) <- rowData(sce)$ID

# Save object

saveRDS(sce, "Robjects/Caron_data.sce.annot.rds")
