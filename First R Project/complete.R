#Part 2: My complete function
complete <- function(directory, id = 1:332) {
  files <- list.files(path = directory, pattern = ".csv", full.names=TRUE)
  nobs <- numeric(0)
  
  for(i in id){
    #Sum of complete cases for each file, added to nobs vector
    count <- sum(complete.cases(read.csv(files[i])))
    nobs <- c(nobs,count)
  }
  #Conversion to dataframe with
  data.frame(id,nobs)
}

#Test
complete("specdata", c(2, 4, 8, 10, 12))
#This should produce:
##   id nobs
## 1  2 1041
## 2  4  474
## 3  8  192
## 4 10  148
## 5 12   96