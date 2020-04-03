#Part 3: Correlation Function

corr <- function(directory="specdata", threshold = 0) {
    correl <- numeric(0)
    #vector of correlations
    complete_directory <- complete(directory)
    #function from complete.R
    complete_thresh <- complete_directory[complete_directory$nobs>threshold, ]
    #could have also used a subset function here.
    #determines all files that meet threshold.
    
    files <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
    
    for(i in complete_thresh$id) {
        data <- read.csv(files[i])
        complete_data <- subset(data,complete.cases(data))
        #Another Version:
        #complete_data <- data[(!is.na(data[["sulfate"]])), ]
        #complete_data <- complete_data[(!is.na(complete_data[["nitrate"]])), ]
        correl <- c(correl, cor(complete_data$sulfate, complete_data$nitrate))
    }
    correl
}

#Test
cr <- corr("specdata", 400)
head(cr)
## [1] -0.01895754 -0.04389737 -0.06815956 -0.07588814  0.76312884 -0.15782860
summary(cr)
##     Min.  1st Qu.   Median     Mean  3rd Qu.     Max. 
## -0.17623 -0.03109  0.10021  0.13969  0.26849  0.76313


