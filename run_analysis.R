# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each 
#     measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set 
#     with the average of each variable for each activity and each subject.

### Import Data ###
#Import test data
X_test <- read.table("./data/Dataset/UCI HAR Dataset/test/X_test.txt",sep = "\t",
                   header = FALSE)
# Test labels, see activity_labels to link to activity name
Y_test <- read.table("./data/Dataset/UCI HAR Dataset/test/y_test.txt", sep = "\t",
                   header = FALSE)
# Import train data
X_train <- read.table("./data/Dataset/UCI HAR Dataset/train/X_train.txt", sep = "\t",
                      header = FALSE)
# Train labels, see activity_labels to link to activity name
Y_train <- read.table("./data/Dataset/UCI HAR Dataset/train/y_train.txt", sep = "\t",
                      header = FALSE)

# Load data linking class label to activity name
activity_labels <- read.table("./data/Dataset/UCI Har Dataset/activity_labels.txt")
# Load data linking row to subject who performed the activity for each window sample. Range 1 to 30
subject_train <- read.table("./data/Dataset/UCI HAR Dataset/train/subject_train.txt", sep ="")
# Load data linking row to subject who performed the activity for each window sample. Range 1 to 30
subject_test <- read.table("./data/Dataset/UCI HAR Dataset/test/subject_test.txt", sep ="")