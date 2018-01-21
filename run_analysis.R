#read in data sets
activitylabels<-read.table("/home/andre/coursera/3_Getting_and_cleaning_data/ProgrammingAssignmentGettingAndCleaningData/UCI HAR Dataset/activity_labels.txt")
features<-read.table("/home/andre/coursera/3_Getting_and_cleaning_data/ProgrammingAssignmentGettingAndCleaningData/UCI HAR Dataset/features.txt")
trainset<-read.table("/home/andre/coursera/3_Getting_and_cleaning_data/ProgrammingAssignmentGettingAndCleaningData/UCI HAR Dataset/train/X_train.txt")
trainlabel<-read.table("/home/andre/coursera/3_Getting_and_cleaning_data/ProgrammingAssignmentGettingAndCleaningData/UCI HAR Dataset/train/y_train.txt")
trainsubject<-read.table("/home/andre/coursera/3_Getting_and_cleaning_data/ProgrammingAssignmentGettingAndCleaningData/UCI HAR Dataset/train/subject_train.txt")
testset<-read.table("/home/andre/coursera/3_Getting_and_cleaning_data/ProgrammingAssignmentGettingAndCleaningData/UCI HAR Dataset/test/X_test.txt")
testlabel<-read.table("/home/andre/coursera/3_Getting_and_cleaning_data/ProgrammingAssignmentGettingAndCleaningData/UCI HAR Dataset/test/y_test.txt")
testsubject<-read.table("/home/andre/coursera/3_Getting_and_cleaning_data/ProgrammingAssignmentGettingAndCleaningData/UCI HAR Dataset/test/subject_test.txt")

#define column names
names(activitylabels)<-c("id", "activity")
names(trainlabel)<-c("id")
names(testlabel)<-c("id")
names(trainsubject)<-c("subject")
names(testsubject)<-c("subject")


#concatenate label, subject and data set
train<-cbind(trainlabel,trainsubject, trainset)
test<-cbind(testlabel,testsubject, testset)

#concatenate test and train sets into on data set
data<-rbind(train,test)

#join data with activty labels by id
data<-merge(data,activitylabels,by.x="id",by.y="id")

#load libraries
library(dplyr)
library(tidyr)

#crate a tibble
data<-as_tibble(data)

#define column names
names(data)<-c("id","subject",as.vector(t(features[2])),"activity")

#remove column with duplicated names because they cause an error when using select
data<-data[,!duplicated(colnames(data))]

#select only the mean and std columns
data<-select(data,"activity","subject",contains("mean()"),contains("std()"))

#summarize by mean over the activity and subject
data_mean<-data %>% group_by(activity,subject) %>% summarise_all(mean)

#export data to csv
write.csv(data_mean, file="activity_recognition.csv")