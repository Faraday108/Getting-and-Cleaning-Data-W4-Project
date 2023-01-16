X_test <- read.table("./data/Dataset/UCI HAR Dataset/test/X_test.txt")
# Test labels, see activity_labels to link to activity name
Y_test <- read.table("./data/Dataset/UCI HAR Dataset/test/y_test.txt", sep = " ",
                     header = FALSE)
# Import train data
#X_train <- read.table("./data/Dataset/UCI HAR Dataset/train/X_train.txt", sep = " ",
#                      header = FALSE)
X_train <- read.table("./data/Dataset/UCI HAR Dataset/train/X_train.txt")

# Train labels, see activity_labels to link to activity name
Y_train <- read.table("./data/Dataset/UCI HAR Dataset/train/y_train.txt", sep = " ",
                      header = FALSE)

# Load data linking class label to activity name
activity_labels <- read.table("./data/Dataset/UCI Har Dataset/activity_labels.txt")
# Load data linking row to subject who performed the activity for each window sample. Range 1 to 30
subject_train <- read.table("./data/Dataset/UCI HAR Dataset/train/subject_train.txt", sep ="")
# Load data linking row to subject who performed the activity for each window sample. Range 1 to 30
subject_test <- read.table("./data/Dataset/UCI HAR Dataset/test/subject_test.txt", sep ="")