Variable used in the run_analysis.R   :
test_X :reads table(X_test.txt)
test_y: reads table(Y_test.txt)
test_subject: reads table(subject_test.txt)
train_X: reads table(X_train.txt)
train_y: reads table(y_train.txt)
train_subject: reads table(subject_train.txt)
Activity_labels:reads table(activity_labels.txt)
Feature_file<-reads table(features.txt)  
bind_test: is the column bind of the test_X ,test_y, test_subject
bind_train: is the column bind of the train_X ,train_y, train_subject
dataset is the row bind of the bind_test, bind_train to make a complete dataset
allcolumn_names contains all the column names of the complete data set.
mean_and_std: contains all the column manes which are having the mean and the standard deviation with the activity is and the sunject id
mean_df stores the calculation of mean across all the activity_id and the subject id
ordering the dataset across the activity id and and the subject id to cread a tidy_data.
