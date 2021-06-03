Rds files needed for the course itself.

#------------------------
# Read-only files needed:
#------------------------
#
# caron_sce_nz_postQc.Rds
#--------------------------------------
# made by preProc.Rmd
# needed by:
# normalisation_GSM3872434_simple.Rmd
# batch_GSM3872442.Rmd
#
# caron_sce_nz_postQc_allCells.Rds
#--------------------------------------
# made by preProcAllCells.Rmd
# needed by normalisation_GSM3872434_simple.Rmd
# --> have a copy in init Robjects/
#
# caron_sce_nz_postDeconv_5hCellPerSpl.Rds
#--------------------------------------
# made by normalisation_5hCellPerSpl.Rmd
# needed by:
# dimRedForViz.Rmd
# confounding_caron.Rmd that calls confounding.Rmd
# dataSetIntegration_PBMMC_ETV6-RUNX1.Rmd
# dataSetIntegration_allSets.Rmd
#
# caron_sce_nz_postDeconv_5hCellPerSpl_dimRed.Rds
#--------------------------------------
# made by dimRedForViz.Rmd
# needed by:
# featSelec.Rmd
# dimRedForAna.Rmd
#
# caron_sce_nz_postDeconv_5hCellPerSpl_dsi_PBMMC_ETV6-RUNX1.Rds
#--------------------------------------
# made by dataSetIntegration_PBMMC_ETV6-RUNX1.Rmd
# called by dataSetIntegration_expand_PBMMC_ETV6-RUNX1_5hcps.Rmd above
# needed by:
# clusteringPostDsi.Rmdv
#
# caron_sce_nz_postDeconv_5hCellPerSpl_dsi_PBMMC_ETV6-RUNX1_clust.Rds
#--------------------------------------
# made by clusteringPostDsi.Rmd
# needed by:
# clusterMarkerGenes.Rmd
#
# caron_sce_nz_postDeconv_5hCellPerSpl_dsi_PBMMC_ETV6-RUNX1_Fmwbl.Rds
# caron_sce_nz_postDeconv_allCells_dsi_PBMMC_ETV6-RUNX1_Fmwbl.Rds
#--------------------------------------
# made by dataSetIntegration_PBMMC_ETV6-RUNX1.Rmd
# needed by:
# multiSplComp.Rmd
#
# caron_sce_nz_postDeconv_5hCellPerSpl_dsi_allSets_Fmwbl.Rds
# caron_sce_nz_postDeconv_allCells_dsi_allSets_Fmwbl.Rds
#--------------------------------------
# made by dataSetIntegration_allSets.Rmd
# needed by:
# multiSplComp.Rmd
#
# hca_sce_nz_postDeconv_5kCellPerSpl.Rds
#--------------------------------------
# made by preProcAllCells.Rmd, now in annex
# --> have a copy in init Robjects/
# needed by pseudoTime.Rmd
#
#------------------------
# init Robjects files needed:
#------------------------
#
# caron_sce_nz_postQc_allCells.Rds
# hca_sce_nz_postDeconv_5kCellPerSpl.Rds
#
# have soft links for these two,
# and comment saveRDS() call to write them.


# File list:

-rw-r--r--  1 baller01  CRI\Unix-Bioinformatics  133  2 Jun 14:49 caron_sce_nz_postDeconv_5hCellPerSpl.Rds
-rw-r--r--  1 baller01  CRI\Unix-Bioinformatics  133  2 Jun 14:49 caron_sce_nz_postDeconv_5hCellPerSpl_dimRed.Rds
-rw-r--r--  1 baller01  CRI\Unix-Bioinformatics  132  2 Jun 14:49 caron_sce_nz_postDeconv_5hCellPerSpl_dsi_PBMMC_ETV6-RUNX1.Rds
-rw-r--r--  1 baller01  CRI\Unix-Bioinformatics  132  2 Jun 14:49 caron_sce_nz_postDeconv_5hCellPerSpl_dsi_PBMMC_ETV6-RUNX1_Fmwbl.Rds
-rw-r--r--  1 baller01  CRI\Unix-Bioinformatics  132  2 Jun 14:49 caron_sce_nz_postDeconv_5hCellPerSpl_dsi_PBMMC_ETV6-RUNX1_clust.Rds
-rw-r--r--  1 baller01  CRI\Unix-Bioinformatics  132  2 Jun 14:49 caron_sce_nz_postDeconv_5hCellPerSpl_dsi_PBMMC_PRE-T.Rds
-rw-r--r--  1 baller01  CRI\Unix-Bioinformatics  133  2 Jun 14:49 caron_sce_nz_postDeconv_5hCellPerSpl_dsi_allSets_Fmwbl.Rds
-rw-r--r--  1 baller01  CRI\Unix-Bioinformatics  134  2 Jun 14:49 caron_sce_nz_postDeconv_allCells.Rds
-rw-r--r--  1 baller01  CRI\Unix-Bioinformatics  133  2 Jun 14:49 caron_sce_nz_postDeconv_allCells_dsi_PBMMC_ETV6-RUNX1_Fmwbl.Rds
-rw-r--r--  1 baller01  CRI\Unix-Bioinformatics  133  2 Jun 14:49 caron_sce_nz_postDeconv_allCells_dsi_PBMMC_PRE-T.Rds
-rw-r--r--  1 baller01  CRI\Unix-Bioinformatics  133  2 Jun 14:49 caron_sce_nz_postDeconv_allCells_dsi_allSets_Fmwbl.Rds
-rw-r--r--  1 baller01  CRI\Unix-Bioinformatics  133  2 Jun 14:49 caron_sce_nz_postQc.Rds
-rw-r--r--  1 baller01  CRI\Unix-Bioinformatics  134 21 May 13:59 caron_sce_nz_postQc_allCells.Rds
-rw-r--r--  1 baller01  CRI\Unix-Bioinformatics  134  2 Jun 14:49 hca_sce_nz_postDeconv_5kCellPerSpl.Rds
