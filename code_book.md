### Codebook for activity_recognition.csv

## Source Data
As source data http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
from 21-Jan_2018 was used.

## Transformations
1. Horizontally concatenate "UCI HAR Dataset/train/subject_train.txt", "UCI HAR Dataset/train/X_train.txt" and "UCI HAR Dataset/train/y_train.txt"
2. Horizontally concatenate "UCI HAR Dataset/test/subject_test.txt", "UCI HAR Dataset/test/X_test.txt" and "UCI HAR Dataset/test/y_test.txt"
3. Vertically concatenate the data sets from 1. and 2.
4. Join "UCI HAR Dataset/activity_labels.txt" to the data set
5. Rename the columns to (id,subject, UCI HAR Dataset/features.txt, activity)
6. Remove duplicate column names
7. Select only the activity and subject column and columns that contain a mean or std
8. Calculate the mean of each variable grouped by the activity and the subject

## Variables
```
Name                  Position    Unit
activity                    1     string
subject                     2     integer
tBodyAcc-mean()-X           3     double
tBodyAcc-mean()-Y           4     double
tBodyAcc-mean()-Z           5     double
tGravityAcc-mean()-X	      6     double
tGravityAcc-mean()-Y        7	    double
tGravityAcc-mean()-Z	      8     double
tBodyAccJerk-mean()-X	      9     double
tBodyAccJerk-mean()-Y	      10    double
tBodyAccJerk-mean()-Z	      11    double
tBodyGyro-mean()-X	        12    double
tBodyGyro-mean()-Y	        13    double
tBodyGyro-mean()-Z	        14    double
tBodyGyroJerk-mean()-X	    15    double
tBodyGyroJerk-mean()-Y	    16    double
tBodyGyroJerk-mean()-Z	    17    double
tBodyAccMag-mean()	        18    double
tGravityAccMag-mean()	      19    double
tBodyAccJerkMag-mean()	    20    double
tBodyGyroMag-mean()         21    double
tBodyGyroJerkMag-mean()	    22    double
fBodyAcc-mean()-X	          23    double
fBodyAcc-mean()-Y	          24    double
fBodyAcc-mean()-Z	          25    double
fBodyAccJerk-mean()-X	      26    double
fBodyAccJerk-mean()-Y	      27    double
fBodyAccJerk-mean()-Z	      28    double
fBodyGyro-mean()-X	        29    double
fBodyGyro-mean()-Y	        30    double
fBodyGyro-mean()-Z	        31    double
fBodyAccMag-mean()	        32    double
fBodyBodyAccJerkMag-mean()  33    double
fBodyBodyGyroMag-mean()	    34    double
fBodyBodyGyroJerkMag-mean()	35    double
tBodyAcc-std()-X	          36    double 
tBodyAcc-std()-Y	          37    double
tBodyAcc-std()-Z	          38    double
tGravityAcc-std()-X	        39    double
tGravityAcc-std()-Y	        40    double
tGravityAcc-std()-Z	        41    double
tBodyAccJerk-std()-X	      42    double
tBodyAccJerk-std()-Y	      43    double
tBodyAccJerk-std()-Z	      44    double
tBodyGyro-std()-X	          45    double
tBodyGyro-std()-Y	          46    double
tBodyGyro-std()-Z	          47    double
tBodyGyroJerk-std()-X	      48    double
tBodyGyroJerk-std()-Y	      49    double
tBodyGyroJerk-std()-Z	      50    double
tBodyAccMag-std()	          51    double
tGravityAccMag-std()	      52    double
tBodyAccJerkMag-std()	      53    double
tBodyGyroMag-std()	        54    double
tBodyGyroJerkMag-std()	    55    double
fBodyAcc-std()-X	          56    double
fBodyAcc-std()-Y	          57    double
fBodyAcc-std()-Z	          58    double
fBodyAccJerk-std()-X	      59    double
fBodyAccJerk-std()-Y	      60    double
fBodyAccJerk-std()-Z	      61    double
fBodyGyro-std()-X	          62    double
fBodyGyro-std()-Y	          63    double
fBodyGyro-std()-Z	          64    double
fBodyAccMag-std()	          65    double
fBodyBodyAccJerkMag-std()	  66    double
fBodyBodyGyroMag-std()	    67    double
fBodyBodyGyroJerkMag-std()  68    double
```