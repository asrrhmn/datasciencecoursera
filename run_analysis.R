# Getting and Cleaning Data Project John Hopkins Coursera
# Author: Anis Rahman

# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Load Packages
library(data.table)
library(reshape2)

#STEP-01
#download and unzip DataFiles from website

lpath <- getwd()
furl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file (furl,file.path(lpath,"dataFiles.zip"))
unzip(zipefile = "dataFiles.zip")

#STEP-02
#Create Activity labels from DataFile
 
activity.labels <- read.table(file.path(lpath,"UCI HAR Dataset/activity_labels.txt"),
                              col.names = c("class.Labels", "activity.Name"))
#STEP-03
#Create Feature from DataFile

featr <- read.table(file.path(lpath, "UCI HAR Dataset/features.txt"),
                    col.names = c("index", "feature.Names"))
  #select required features  ( i.e mean and std) from the complete list
  #below code get indices of the required features
featr.wanted <- grep("(mean|std)\\()", featr$feature.Names)
  #apply indices on featr list to get the required features to measure.
featr.measure <- featr[featr.wanted,"feature.Names"]
featr.measure <- gsub("[()]","",featr.measure)

#STEP-04
#Create Train dataset from DataFile

train.data <- read.table(file.path(lpath, "UCI HAR Dataset/train/X_train.txt"))[, featr.wanted]
colnames(train.data) <- featr.measure

train.activities <- read.table(file.path(lpath, "UCI HAR Dataset/train/Y_train.txt"),
                             col.names = c("Activity"))
train.subjects <- read.table(file.path(lpath, "UCI HAR Dataset/train/subject_train.txt"),
                                       col.names = c("Subject.Num"))
train.ds <- cbind(train.subjects,train.activities,train.data)

#STEP-05
#Create Test dataset from DataFile

test.data <- read.table(file.path(lpath, "UCI HAR Dataset/test/X_test.txt"))[, featr.wanted]
colnames(test.data) <-featr.measure

test.activities <- read.table(file.path(lpath, "UCI HAR Dataset/test/Y_test.txt"),
                              col.names = c("Activity"))
test.subjects <- read.table(file.path(lpath, "UCI HAR Dataset/test/subject_test.txt"),
                            col.nams = c("Subject.Num"))
test.ds <- cbind(test.subjects,test.activities,test.data)

#STEP-06
#Merging Train dataset and Test Dataset.

complete.ds <- rbind(train.ds,test.ds)

#STEP-06
# Reshape complete.ds to find mean of all independent tidy data , for each activity and subject.
s1complete.ds <- reshape2::melt(data=complete.ds,id= c("Subject.Num","Activity"))
s2complete.ds <- reshape2::dcast(data=s1complete.ds,Subject.Num + Activity ~ variable, fun.aggregate =  mean)

#STEP-07
#write tidy data set into one csv file for review.
data.table::fwrite(x=s2complete.ds,file ="tidyop.csv",qoute=FALSE)
