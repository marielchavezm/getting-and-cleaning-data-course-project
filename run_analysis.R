file <- "getdata_projectfiles_UCI HAR Dataset.zip"
## Download and unzip the dataset:if (!file.exists(file)){  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"  download.file(fileURL, filename, method="curl")}  if (!file.exists("UCI HAR Dataset")) {   unzip(file) }
#load dataset
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")activity_labels[,2]<-as.character(activity_labels[,2])features <- read.table("UCI HAR Dataset/features.txt")features[,2]<-as.character(features[,2])X_train <-read.table("UCI HAR Dataset/train/X_train.txt")Y_train <-read.table("UCI HAR Dataset/train/Y_train.txt")X_test <-read.table("UCI HAR Dataset/test/X_test.txt")Y_test <-read.table("UCI HAR Dataset/test/Y_test.txt")
