rm(list=ls())
getwd()
setwd("week4/")

# Reading Files for test data

test_X<-read.table("test/X_test.txt")

test_y<-read.table("test/y_test.txt")
    
test_subject<-read.table("test/subject_test.txt")
    
# Reading Files for train data

train_X<-read.table("train/X_train.txt")

train_y<-read.table("train/y_train.txt")
       
train_subject<-read.table("train/subject_train.txt")
        


# Reading the activity labels 
Activity_labels<-read.table("activity_labels.txt")

# Reading the feature file

Feature_file<-read.table("features.txt")

# Setting the column names

colnames(train_X)<-Feature_file[,2]
colnames(train_y)<-"activity_ID"
colnames(train_subject)<-"subject_id"

colnames(test_X)<-Feature_file[,2]
colnames(test_y)<-"activity_ID"
colnames(test_subject)<-"subject_id"
head(test_subject)

colnames(Activity_labels)<-c("acitvity_id","activity_name")
# Merging
bind_train<-cbind(train_y,train_subject,train_X)

bind_test<-cbind(test_y,test_subject,test_X)

dataset<-rbind(bind_train,bind_test)
allcolumn_names<-colnames(dataset)

mean_and_std <- (grepl("activity_ID" , allcolumn_names) | 
                   grepl("subject_id" , allcolumn_names) | 
                   grepl("mean.." , allcolumn_names) | 
                   grepl("std.." , allcolumn_names) )

mydata<-dataset[,mean_and_std==TRUE]
colnames(mydata)

#Setting data to the descriptive labels

mydata$activity_ID[mydata$activity_ID==1]<-"WALKING"
mydata$activity_ID[mydata$activity_ID==2]<-"WALKING_UPSTAIRS"
mydata$activity_ID[mydata$activity_ID==3]<-"WALKING_DOWNSTAIRS"
mydata$activity_ID[mydata$activity_ID==4]<-"SITTING"
mydata$activity_ID[mydata$activity_ID==5]<-"STANDING"
mydata$activity_ID[mydata$activity_ID==6]<-"LAYING"
head(mydata)

mean_df <- aggregate(. ~subject_id + activity_ID, mydata, mean)
tidy_data<-mean_df[order(mean_df$subject_id,mean_df$activity_ID),]
head(tidy_data)

write.table(tidy_result, "tidy_result.txt", row.name=FALSE)
