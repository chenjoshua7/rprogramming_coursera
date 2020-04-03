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


