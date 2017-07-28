# Getting-and-cleaning-data
Steps taken for the cleaning of the data :-
Reading the X_test and Y_test and subject_test from the test data set.
Reading the X_train and Y_train and subject_train from the train data set.
Reading the activity_labels and feature text file from the given dataset.
Assgining the column names for thr train and the test datasets.
Binding the train and test datasets by using the cbind function 
For merging both data sets rbind is used , to make complete data set .
To carry out the calculation on the mean and standard deviation we can choose mean and std from the columnnames by using the gerpl function.
Setting the descriptive name for the across all the activity label.
Calculation of mean across all the subject is and the activity id by the use of aggregrrate function.
subsetting and Ordering the tidy data according to the subject id and activity id
writing the data in the txt format by using write.table.
