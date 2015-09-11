wd <- "~/GitHub/Catepillar-Tube-Pricing"

setwd(wd)

# The following files are provided
#   - sample_submission.csv
#   - data.zip

source("~/GitHub/Get-Raw-Data/download.R")
downloadKaggle("caterpillar-tube-pricing","sample_submission.csv")
downloadKaggle("caterpillar-tube-pricing","data.zip")


trnFile <- "train.csv"
tstFile <- "test.csv"

download.file(trnUrl, paste(wd,"\\train.csv", sep=""), quiet=TRUE)
download.file(tstUrl, paste(wd,"\\test.csv", sep=""), quiet=TRUE)

datalist <- list(
        train=read.csv(
                paste(wd,"\\",trnFile, sep=""), header=TRUE, as.is=TRUE), 
        test=read.csv(
                paste(wd,"\\",tstFile, sep=""), header=TRUE, as.is=TRUE)
        )