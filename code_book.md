###Codebook for activity_recognition.csv

##Source Data
As source data http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
from 21-Jan_2018 was used.

##Transformations
1. Horizontally concatenate "UCI HAR Dataset/train/subject_train.txt", "UCI HAR Dataset/train/X_train.txt" and "UCI HAR Dataset/train/y_train.txt"
2. Horizontally concatenate "UCI HAR Dataset/test/subject_test.txt", "UCI HAR Dataset/test/X_test.txt" and "UCI HAR Dataset/test/y_test.txt"
3. Vertically concatenate the data sets from 1. and 2.
4. Join "UCI HAR Dataset/activity_labels.txt" to the data set
5. Rename the columns to (id,subject, UCI HAR Dataset/features.txt, activity)
6. Remove duplicate column names
7. Select only the activity and subject column and columns that contain a mean or std
8. Calculate the mean of each variable grouped by the activity and the subject

##Variables
```
Name                  Position
activity                    1
subject                     2
tBodyAcc-mean()-X           3
tBodyAcc-mean()-Y           4
tBodyAcc-mean()-Z           5
tGravityAcc-mean()-X	      6
tGravityAcc-mean()-Y        7	
tGravityAcc-mean()-Z	      8
tBodyAccJerk-mean()-X	      9
tBodyAccJerk-mean()-Y	      10
tBodyAccJerk-mean()-Z	      11
tBodyGyro-mean()-X	        12
tBodyGyro-mean()-Y	        13
tBodyGyro-mean()-Z	        14
tBodyGyroJerk-mean()-X	    15
tBodyGyroJerk-mean()-Y	    16
tBodyGyroJerk-mean()-Z	    17
tBodyAccMag-mean()	        18
tGravityAccMag-mean()	      19
tBodyAccJerkMag-mean()	    20
tBodyGyroMag-mean()         21
tBodyGyroJerkMag-mean()	    22
fBodyAcc-mean()-X	          23
fBodyAcc-mean()-Y	          24
fBodyAcc-mean()-Z	          25
fBodyAccJerk-mean()-X	      26
fBodyAccJerk-mean()-Y	      27
fBodyAccJerk-mean()-Z	      28
fBodyGyro-mean()-X	        29
fBodyGyro-mean()-Y	        30
fBodyGyro-mean()-Z	        31
fBodyAccMag-mean()	        32
fBodyBodyAccJerkMag-mean()  33	
fBodyBodyGyroMag-mean()	    34
fBodyBodyGyroJerkMag-mean()	35
tBodyAcc-std()-X	          36
tBodyAcc-std()-Y	          37
tBodyAcc-std()-Z	          38
tGravityAcc-std()-X	        39
tGravityAcc-std()-Y	        40
tGravityAcc-std()-Z	        41
tBodyAccJerk-std()-X	      42
tBodyAccJerk-std()-Y	      43
tBodyAccJerk-std()-Z	      44
tBodyGyro-std()-X	          45
tBodyGyro-std()-Y	          46
tBodyGyro-std()-Z	          47
tBodyGyroJerk-std()-X	      48
tBodyGyroJerk-std()-Y	      49
tBodyGyroJerk-std()-Z	      50
tBodyAccMag-std()	          51
tGravityAccMag-std()	      52
tBodyAccJerkMag-std()	      53
tBodyGyroMag-std()	        54
tBodyGyroJerkMag-std()	    55
fBodyAcc-std()-X	          56
fBodyAcc-std()-Y	          57
fBodyAcc-std()-Z	          58
fBodyAccJerk-std()-X	      59
fBodyAccJerk-std()-Y	      60
fBodyAccJerk-std()-Z	      61
fBodyGyro-std()-X	          62
fBodyGyro-std()-Y	          63
fBodyGyro-std()-Z	          64
fBodyAccMag-std()	          65
fBodyBodyAccJerkMag-std()	  66
fBodyBodyGyroMag-std()	    67
fBodyBodyGyroJerkMag-std()  68
```