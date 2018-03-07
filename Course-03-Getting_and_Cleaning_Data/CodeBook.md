### Code Book

## Scope of the document: <br />

Provide details information on list of variables, dataset and transformation thats is formulated and created by run_analysis.R program

## Variables <br />

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

## Data

Based on the transformation of data on variable s2.complete.ds , new data "tidyop.csv" is generated and saved as csv file.

