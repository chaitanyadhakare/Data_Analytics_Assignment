#print("HelloWorld")
#create a variable
#i <- "Sample"
#class(i) #returns datatype
#typeof(i) #returns datatype
#dim(iris) # dimention of dataset
#plot(pressure,pch=15,col="red",bg="lightblue") # Sample plot

#reads the dataset into df variable
df<-read.table("iris.data",sep=",")
print(df)
head(iris) #first Six instences of dataset
head(df)


#features/columns and datatypes
print("Structure of Dataset")
str(df)   #provides the structure of dataframe
str(iris)

#datatypes
print("Datatypes of attributes")
class(df$V1)
class(df$V2)
class(df$V3)
class(df$V4)
class(df$V5)      #typeof() can be used as alternative
typeof(df$V5)
is.numeric(df$V1)
is.integer(df$V1)


#Structure of Dataset
str(iris) #provides the structure of the data frame

max(df$V1)
min(df$V1)
mean(df$V1)
median(df$V1)
sd(df$V1) #Standard deviation
range(df$V1) #shows min and max value in given range
var(df$V1) #Variance
quantile(df$V1) #

summary(df) # show the summary of dataframe


#ploting the histogram of dataset column
hist(df$V1 ,xlab = "V1 scale", ylab = "Frequency Distribution", col="lightblue1", border="dodgerblue3")
hist(df$V2 ,xlab = "V2 scale", ylab = "Frequency Distribution", col="lightblue1", border="dodgerblue3")
hist(df$V3 ,xlab = "V3 scale", ylab = "Frequency Distribution", col="lightblue1", border="dodgerblue3")
hist(df$V4 ,xlab = "V4 scale", ylab = "Frequency Distribution", col="lightblue1", border="dodgerblue3")

#ploting the boxplot of dataset column
boxplot(df$V1)
boxplot(df$V2)
boxplot(df$V3)
boxplot(df$V4)
#All boxplots Combine into Single plot
boxplot(df$V1,df$V2,df$V3,df$V4,
        main = "Multiple boxplots for comparision",
        at = c(1,2,3,4),
        names = c("V1", "V2", "V3", "V4"),
        horizontal = TRUE, 
        notch = TRUE, 
        col = "lightBlue1", 
        border="dodgerblue3")

#Skewness
#if less than -1 or greater than 1 - Highly Skewed
#if -1 and -0.5 or 0.5 and 1 then -moderately skewed
#if -0.5 and 0.5 - approx symmetric
library(moments)   
skewness(df$V1)
skewness(df$V2)
skewness(df$V3)
skewness(df$V4)
