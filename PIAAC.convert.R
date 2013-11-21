#
# This function extracts information from sav file and save two rda files with data and colnames
#

library(foreign) 

prepare <- function(dataset, name) {
  name2 <- paste(name, "dict",sep="")
  colnames(dataset) <- toupper(colnames(dataset))
  for (i in 1:ncol(dataset))
    if (class(dataset[,i]) == "factor")
      dataset[,i] <- factor(dataset[,i])
  
  dict <- attributes(dataset)$variable.labels
  names(dict) <- toupper(names(dict))
  assign(x=name2, value=dict)
  assign(x=name, value=dataset)
  
  save(list=name2, file=paste(name2, ".rda", sep=""), compression_level=9, compress="bzip2")
  save(list=name, file=paste(name, ".rda", sep=""), compression_level=9, compress="bzip2")
}

#
# read all SPSS files and transform them into R format
setwd("/Users/pbiecek/camtasia/GitHub/PIAAC_tmp/")

dfl <- list.files(pattern=".sav")

alldat <- list()
for (df in dfl) {
  cat(df, "\n")
  aut <- read.spss(df, to.data.frame=TRUE)
  prepare(aut, substr(df, 4, 6))
  alldat[[df]] <- aut
}

piaac <- do.call(rbind, alldat)
prepare(piaac, "piaac")

# aut <- read.spss("prgautp1.sav", to.data.frame=TRUE)
# prepare(aut, "aut")

cat(paste0("\\alias{",substr(dfl, 4, 6), "}\n"))

#
# check if the PIAAC package is working
#

library(devtools)
install_github("PIAAC", "pbiecek")
library(PIAAC)

