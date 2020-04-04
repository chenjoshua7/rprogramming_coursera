#Answers to Week 3 Quiz:

#1. In this dataset, what is the mean of 'Sepal.Length' for the species virginica?
library(datasets)
data("iris")
?iris
virginica <- subset(iris, Species =="virginica")
mean(virginica$Sepal.Length)

#2. Continuing with the 'iris' dataset from the previous Question, what R code returns 
#a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', 
#and 'Petal.Width'?

colnames(iris)
dim(iris)
apply(iris[ ,1:4], 2, mean)

#3. How can one calculate the average miles per gallon (mpg) by number of cylinders in
#the car (cyl)? Select all that apply.
library(datasets)
data(mtcars)
#using tapply function
tapply(mtcars$mpg,mtcars$cyl,mean)
#use sapply function, but must first splitting mpg on cyl
sapply(split(mtcars$mpg,mtcars$cyl), mean)

#Continuing with the 'mtcars' dataset from the previous Question, what is the absolute 
#difference between the average horsepower of 4-cylinder cars and the average horsepower
#of 8-cylinder cars?
abs(means[2]-means[3])
