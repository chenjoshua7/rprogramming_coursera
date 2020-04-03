#My work for Project 1, Week 2, R Programming course
#Joshua Chen
#2020 - April - 02

#Part 1: My pollutant meanfunction.
pollutantmean <- function(directory = "specdata", pollutant, id = 1:332) {
    #Character vector of paths to all .csv files within directorys
    files <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
    #values of specficed pollutants. Currently empty numeric vector.
    poll.values <- numeric()
     
    #For each data file, store desired pollutant within poll.values vector.
    for(i in id) {
         data <- read.csv(files[i])
         poll.values <- c(poll.values, data[[pollutant]])
    }
    #Finds mean of all acquired values in poll.values. Ignores null values.
    mean(poll.values, na.rm = TRUE)
}

#Test
pollutantmean(directory = "specdata", pollutant = "nitrate", id = 70:72)
#Answer should match that given by the course: 1.706047