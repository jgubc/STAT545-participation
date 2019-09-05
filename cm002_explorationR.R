## Clear the workspace of all objects in memory.
rm(list=ls())

## Set working directory
setwd('')

## Load helpful functions
source('')

## practise in Class 2 Sept 5, 2019
number <- 5+2
number
number *2
number/4

library(caret)

time <- c(1:10)
time
mean ((time<- c(1:10)))

newtime <- c(x=2:10, y= 15:20)
newtime
 
## assign and print at the same time
(newtime <- c(x=2:10, y= 15:20))
mean(newtime)

range(time)
time<0
time>5
time==0
time!=3

time>3 & time<9
time>4 | time<8
which(time<7)

sum(time>2)
(s<-sum(time>5))

## subsetting
time[5]
time[-9]
time[c(3,8)]

is.na(time)

time[time<7]
time
time[time<6]
ntime<-time[time<7]

## missing values
ntime[3]<-NA
ntime

##checking for missing values
is.na(ntime)

## calculating mean when there are missing values
mean(ntime, na.rm = TRUE)

mtcars
str(mtcars)
plotNormalHistogram(mtcars$mpg)
plotNormalHistogram(mtcars$hp)
nrow(mtcars)
ncol(mtcars)
