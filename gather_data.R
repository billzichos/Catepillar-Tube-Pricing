wd <- "~/GitHub/Catepillar-Tube-Pricing"

setwd(wd)

# The following files are provided
#   - sample_submission.csv
#   - data.zip

source("~/GitHub/Get-Raw-Data/download.R")

downloadKaggle("caterpillar-tube-pricing","sample_submission.csv")
downloadMultKaggleZip("caterpillar-tube-pricing","data.zip", "competition_data")