Getting and Cleaning Data Course Project

This assignment produces R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Instructions to run the script:

Clone the repository "Getting And Cleaning Data Course Project"

Download the data set from the location "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ". 
Extract all the files. You should have a folder named "UCI HAR Dataset" with all the extract files.

Place run_analysis.R in the folder "UCI HAR Dataset"

Set the working directory using the command setwd. For ex. If the files are in the location "C:\Users*yourname*\Documents\R\UCI HAR Dataset" , then the command will be setwd("C:\Users\yourname\Documents\R\UCI HAR Dataset")

If you do not have the data.table and the dplyr package loaded already, then please install the package using the install.packages("data.table")/install.packages("dplyr"). You can load the package using the command library(data.table).
Run the script run_analysis.R in Rstudio using the command source("run_analysis.R")

The tidy dataset should get created in the current directory as tidy.txt.
The codebook is in codebook.md which provides a description of the variables in the data frame produced by this project.

