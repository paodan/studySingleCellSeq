
# The code is obtained from https://f1000research.com/articles/5-2122
# Required packages:
install.packages("R.utils")
install.packages("gdata")
BiocManager::install("scater")


####### Count loading
# library(R.utils)
# gunzip(filename = "rawData/GSE61533_HTSEQ_count_results.xls.gz", 
#        remove=FALSE, overwrite=TRUE)
library(gdata)
all.counts <- read.xls('rawData/GSE61533_HTSEQ_count_results.xls', 
                       sheet=1, header=TRUE, row.names=1)
library(scater)
# sce <- newSCESet(countData=all.counts)
sce <- SCESet(countData=all.counts)
SingleCellExperiment(all.counts)
dim(sce)