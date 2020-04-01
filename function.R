add2 <- function(x,y) {
  x+y
}

above <- function(x,n) {
  use <- x > n
  x[use]
}

columnmean <- function(y) {
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in nc) {
      means[i] <- mean(y,[,i])
  }
  means
}