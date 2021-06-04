# Introduction to Bulk RNA-seq data analysis 
### 21st - 23rd April 2021
#### Taught remotely
#### Bioinformatics Training, Craik-Marshall Building, Downing Site, University of Cambridge

![](Doc/CRUK_CC_web.jpg)

## Instructors

* Abigail Edwards - Bioinformatics Core, Cancer Research UK Cambridge Institute
* Ashley D Sawle - Bioinformatics Core, Cancer Research UK Cambridge Institute
* Stephane Ballereau - Bioinformatics Core, Cancer Research UK Cambridge Institute
* Zeynep Kalender Atak - Miller Group, Cancer Research UK Cambridge Institute

## Outline

In this workshop, you will be learning how to analyse single-cell RNA-seq data.

This will include reading the count data into R, quality control, normalisation,
data set integration, clustering and identification of cluster marker genes, differential expression and abundance analyses, and trajectory analysis. You will also learn
how to generate common plots for analysis and visualisation of gene expression
data, such as TSNE, UMAP and violin plots.

The workshop follows that on bulk RNA-seq analysis that covers read alignment,
quality control, quantification against a reference, and gene set testing. These
are therefore not included here.

This workshop is aimed at biologists interested in learning how to perform
standard single-cell RNA-seq analyses. 

We have run this course once and are still learning how to teach it remotely.
Please bear with us if there are any technical hitches, and be aware that timings
for different sections laid out in the schedule below may not be adhered to.
There may be some necessity to make adjusments to the course as we go.

> ## Prerequisites
>
> __**Some basic experience of using a UNIX/LINUX command line is assumed**__
> 
> __**Some R knowledge is assumed and essential. Without it, you
> will struggle on this course.**__ 
> If you are not familiar with the R statistical programming language we
> strongly encourage you to work through an introductory R course before
> attempting these materials.
> We recommend our [Introduction to R course](https://bioinformatics-core-shared-training.github.io/r-intro/)

## Data sets

Two data sets:

* 'CaronBourque2020': pediatric leukemia, with four sample types, including:
  * pediatric Bone Marrow Mononuclear Cells (PBMMCs)
  * three tumour types: ETV6-RUNX1, HHD, PRE-T  
* 'HCA': adult BMMCs (ABMMCs) obtained from the Human Cell Atlas (HCA)
  * (here downsampled from 25000 to 5000 cells per sample)


<!-- 
## Bookdown

The various analysis steps are bundled into a bookdown.

> **To open the bookdown (please mind: work in progress):**
> 
> The bookdown is in:
> 
> * PATH_TO_BOOKDONW
>
> To open the bookdown:
> 
> * [Bookdown index](PATH_TO_BOOKDONW/index.html)
> 
> OR
> 
> * clone the repository
> * open PATH_TO_BOOKDONW/index.html
-->

## Tentative schedule

**Tentative schedule** for a 1.5 day course.

(Each 1h session should include a 5 min break before the next session) 

### Day A 13:30 - 17:30

- (**12:30 - 13:30 LUNCH**)
- 13:30 opening <!-- Stephane -->
- 13:30 - 14:15 Introduction <!-- []() --> <!-- Kania - lecture -->
- 14:15 - 14:30 Preamble: data set and workflow <!-- []() --> <!-- Stephane - 'lecture' -->
- 14:30 - 15:55 library structure, cellranger for alignment and cell calling, preprocessing <!-- []() --> <!-- Ash -->
- 15:55 - 16:05 **10 min break**
- 16:05 - 17:30 normalisation <!-- []() --> <!-- Stephane -->
  
### Day B 09:30 - 17:30

- 09:30 - 10:55 dimensionality reduction, identification of confounding factors, feature selection <!-- []() --> <!-- Zeynep -->
- 10:55 - 11:05 **10 min break**
- 11:05 - 12:30 batch correction and data set integration <!-- []() --> <!-- Abbi -->
- **12:30 - 13:30 LUNCH**
- 13:30 - 14:30 clustering <!-- []() --> <!-- Stephane -->
- 14:30 - 15:25 cluster marker genes <!-- []() --> <!-- Zeynep -->
- 15:25 - 15:35 **10 min break**
- 15:35 - 16:30 differential expression and abundance between conditions <!-- []() --> <!-- Stephane -->
- 16:30 - 17:30 trajectories <!-- []() --> <!-- Zeynep -->
- 17:30 closing <!-- Stephane --> <!-- mentimeter -->

