# This script creates the equivalent object to the one that the students would
# create in the preprocessing challenge. This object is loaded at the the
# beginning of the normalisation and batch correction sessions.

library(DropletUtils)
library(scater)
library(BiocParallel)
library(tidyverse)

bp.params <- MulticoreParam(workers = 7)

#  Load the data

samplesheet <- read_tsv("Data/sample_sheet.tsv")

# data object from `preProc.Challenge.PrepareDataSet.R`
sce <- readRDS("Robjects/Caron_data.sce.annot.rds")

# Filter undetected genes

detected_genes <- rowSums(counts(sce)) > 0
sce <- sce[detected_genes,]

# Filter cells 

is.mito <- which(rowData(sce)$Chromosome=="MT")
sce <- addPerCellQC(sce, subsets=list(Mito=is.mito), BPPARAM = bp.params)
batch.reasons <- quickPerCellQC(colData(sce),
                                percent_subsets=c("subsets_Mito_percent"),
                                batch=sce$Sample)
sce$low_lib_size <- batch.reasons$low_lib_size
sce$low_n_features <- batch.reasons$low_n_features
sce$high_Mito_percent <- batch.reasons$high_subsets_Mito_percent
sce$discard <- sce$low_lib_size | sce$low_n_features | sce$high_Mito_percent
sce.Filtered <- sce[,!sce$discard]

# Modify the sample names for PBMMC_1 - remove the suffix letters so that are
# the same

colData(sce) <- colData(sce) %>%
    as.data.frame() %>% 
    mutate(across(Sample, str_remove, "[ab]$")) %>%
    DataFrame()
    

saveRDS(sce.Filtered, "../RobjectsReadOnly/Caron_filtered.rds")
