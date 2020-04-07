#Pertinent libraries: dplyr which includes reshape and reshape2
library(dplyr)

#Extract data on mean and standard deviation
features <- read.table("features.txt")
features[,2] <- as.character(features[,2])
featuresWanted <- grep(".*mean.*|.*std.*", features[,2])
featuresWanted.names <- features[featuresWanted,2]


# Reading all the required files 
Xtrain <- read.table("train/X_train.txt") [featuresWanted]
Xtest <- read.table("test/X_test.txt") [featuresWanted]
Ytrain <- read.table("train/y_train.txt")
Ytest <- read.table("test/y_test.txt")
Subject_train <- read.table("train/subject_train.txt")
Subject_test <- read.table("test/subject_test.txt")
activity_labels <- read.table("activity_labels.txt")

#Switch labels to characters
activity_labels[,2] <- as.character(activity_labels[,2])

# Merge the training and test sets
X <- rbind(Xtrain,Xtest)
Y <- rbind(Ytrain, Ytest)
Subject <- rbind(Subject_train,Subject_test)


#Merge Data  and set labels
merged_data <- cbind(Subject, Y, X)
colnames(merged_data) <- c("subject", "activity", featuresWanted.names)

#Turn activities & subjects into factors
merged_data$activity <- factor(merged_data$activity, levels = activity_labels[,1], labels = activity_labels[,2])
merged_data$subject <- as.factor(merged_data$subject)

library(reshape2)
allData.melted <- melt(merged_data, id = c("subject", "activity"))
allData.mean <- dcast(allData.melted, subject + activity ~ variable, mean)

write.table(allData.mean, "tidy.txt", row.names = FALSE, quote = FALSE)

