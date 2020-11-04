#Import libraries
library(dplyr)

#Read in data
train <- read.csv("train.csv")
train <- train %>% mutate(id = row_number())

test <- read.csv("test.csv")
test$sales <- NA

complete <- rbind(test,train)

