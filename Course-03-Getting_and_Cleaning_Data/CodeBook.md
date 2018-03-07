### Code Book

Author : Anis Rahman

#### Scope of the document: <br />

Provide details information on list of variables, dataset and transformation thats is formulated and created by run_analysis.R program

#### Variables <br />

No. | Variable Name | Purpose
--- | --------------| -------
1|lpath|Recored path of working directory.
2|furl| url to download DataFile for the project.
3|activity.labels|stores content from activity_labels.txt it has 2 columns class.Labels, activity.Name
4|featr|stored content from features.txt, which has 2 columns : 1. index 2. feature.Names
5|featr.wanted|stores the indices of all features that contain mean and standard deviation
6|featr.measure|stores all required features based on featr.wanted index
7|train.data|Data frame stores content of X_train.txt , whose column index matches
8|train.activities|Data frame stores content of Y_Train.txt, which represent the list of activites ( which is connected to activity.labels
9|train.subjects|Data frame stores content from subject_train.txt, it houses information related to the subjects who performed the activity.
10|train.ds|combined data frame of items. 7,8,9 (column combined DS)
11|test.data|Data frame stores content of X_test.txt , whose column index matches
12|test.activities|Data frame stores content of Y_test.txt, which represent the list of activites ( which is connected to activity.labels
13|test.subjects|Data frame stores content from subject_test.txt, it houses information related to the subjects who performed the 
14|test.ds|combined data frame of items. 7,8,9 (column combined DS)
15|complete.ds| combined data frame for train and test datasets (row combined DS)
16|s1.complete.ds|Data frame transformed from "complete.ds" data frame, based on columns "Subject.Num", "Activity"
17|s2.complete.ds|Data frame transfrmed from s1.complete.ds which calculates mean for all columns based on columns "Subject.Num", "Activity"

#### Data

Based on the transformation of data on variable s2.complete.ds , new data "tidyop.csv" is generated and saved as csv file.

#### Source Data
Data and its Description can be found here [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

#### Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

#### Please see the README.md for how the following instructions are implemented [README.md]

#### 1. Merge the training and the test sets to create one data set.
#### 2. Extracts only the measurements on the mean and standard deviation for each measurement.
#### 3. Uses descriptive activity names to name the activities in the data set
#### 4. Appropriately labels the data set with descriptive variable names.
#### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.



