###Programming Assignment - Getting and Cleaning Data
In run_analysis.R the following transformations are performed on the source data from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
and a file activity_recognition.csv with the final data will be created.

1. Horizontally concatenate "UCI HAR Dataset/train/subject_train.txt", "UCI HAR Dataset/train/X_train.txt" and "UCI HAR Dataset/train/y_train.txt"
2. Horizontally concatenate "UCI HAR Dataset/test/subject_test.txt", "UCI HAR Dataset/test/X_test.txt" and "UCI HAR Dataset/test/y_test.txt"
3. Vertically concatenate the data sets from 1. and 2.
4. Join "UCI HAR Dataset/activity_labels.txt" to the data set
5. Rename the columns to (id,subject, UCI HAR Dataset/features.txt, activity)
6. Remove duplicate column names
7. Select only the activity and subject column and columns that contain a mean or std
8. Calculate the mean of each variable grouped by the activity and the subject
