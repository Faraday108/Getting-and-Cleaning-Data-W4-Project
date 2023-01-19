# Getting-and-Cleaning-Data-W4-Project
Repository containing data and files for the Coursera course "Getting and Cleaning Data" week 4 project. 

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected. 

For this assignment, I created two scripts: import_data.R and run_analysis.R.  
The script import_data.R is designed to import all the relevant data files into R using read.table. This was placed in a separate file so that the data can be loaded once to the environment before subsequent analysis is performed with run_analysis.R. The import_data.R script does the following: 

* The data files X_train and X_test contain all the measurements organized in columns by variable and in rows by subject and activity. 
* Information on activity is appended to the left of the X_train and X_test datasets in column 1 from the respective "Y" (for activity) file. 
* Information on subject is appended to the left of the X_train and X_test datasets in column 2 from the respective "subject" file. 
* To link each column to informative variable names, the names attribute of the X_train and X_test datasets are assigned values c("activity","subject",features$V2)

After importing data with import_data.R, the data is then analyzed as requested in the run_analysis.R script. 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names (accomplished in import_data.R). 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
