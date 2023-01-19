# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each 
#     measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set 
#     with the average of each variable for each activity and each subject.
library(dplyr)
### Import Data ###
# If not already done, import data using import_data.R. 

## 1. Merge training and test sets to create one data set
data <- rbind(X_train, X_test)

## 2. Extract measurements on the mean and standard deviation for each measurement
activity_column <- 1 # column of activity identifiers
subject_column <- 2 # column of subject identifiers
pattern <- "mean()|std()" # regex pattern to find mean and std measurements
mean_std_columns <- grep(pattern, names(data)) # find columns with pattern

# subset data to include activity, subject, and filtered columns
data <- data[,c(activity_column, subject_column, mean_std_columns)]

## 3. Use descriptive names to name activities in data set
data$activity <- activity_labels$V2[data$activity]

## 4. Appropriately labels the data set with descriptive variable names. 
### Accomplished in import_data.R

## 5. From the data set in step 4, creates a second, independent tidy data set 
##     with the average of each variable for each activity and each subject.
tidy_mean <- data %>% group_by(activity, subject) %>% 
  summarize(across(everything(), list(mean)))
### Export dataset

write.table(tidy_mean, "tidy_means_activity_subject.csv", row.names = FALSE)