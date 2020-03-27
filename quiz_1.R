#Quiz 1 - Ozone Part
#Joshua Chen

#Q11: In the dataset provided for this Quiz, what are the column names of the dataset?
hw1_data <- read.csv("hw1_data.csv")
colnames(hw1_data)

#Q12: Extract the first 2 rows of the data frame and print them to the console. What does the output look like?
hw1_data[1:2,]

#Q13: How many observations (i.e. rows) are in this data frame?
dim(hw1_data)

#Q14: Extract the last 2 rows of the data frame and print them to the console. What does the output look like
tail(hw1_data,2)

#Q15: What is the value of Ozone in the 47th row?
hw1_data[47,]

#Q16: How many missing values are in the Ozone column of this data frame?
missing<-is.na(hw1_data$Ozone)
sum(missing)

#Q17: What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
mean(hw1_data$Ozone, na.rm = T)
#or
mean(hw1_data[,"Ozone"], na.rm = T)

#Q18: Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
subset <- subset(hw1_data, Ozone > 31 & Temp >90)
mean(subset$Solar.R)

#Q19: What is the mean of "Temp" when "Month" is equal to 6?
subset19 <- subset(hw1_data, Month ==6)
mean(subset19$Temp)

#Q20: What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
subset20 <- subset(hw1_data, Month ==5)
max(subset20$Ozone, na.rm=T)


