## Coursera - Getting and Cleaning Data - assignment 1

# Set working directory to the exercise container
setwd("/home/erpreciso/Documents/school/getcleandata-prj1")

# Load column labels
featureTable <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
allColumnNames <- featureTable[,2]

# Filter for substrings mean and std.
meanColumns <- grepl("mean()", allColumnNames, fixed = TRUE)
stdColumns <- grepl("std()", allColumnNames, fixed = TRUE)

# Create a vector with only relevant column names for the exercise
relevantColumnNames <- subset(allColumnNames, meanColumns | stdColumns)
relevantColumnNames <- c(relevantColumnNames, "activityCode", "subjectCode")

# Load activity labels
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
colnames(activityLabels) <- c("activityCode", "activityLabel")

# Load all test files
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names="activityCode")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.name="subjectCode")

# Assign names to test variables  -->  ASSIGNMENT #4
colnames(X_test) <- allColumnNames

# Merge user and training type data
X_test$activityCode <- y_test[,1]
X_test$subjectCode <- subject_test[,1]

# Load all training files
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names="activityCode")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.name="subjectCode")

# Assign names to train variables  -->  ASSIGNMENT #4
colnames(X_train) <- allColumnNames

# Merge user and training type data
X_train$activityCode <- y_train[,1]
X_train$subjectCode <- subject_train[,1]

# Join the two datasets -->  ASSIGNMENT #1
totalObservations <- rbind(X_test, X_train)

# Subset to keep only relevant columns  -->  ASSIGNMENT #2
totalObservations <- totalObservations[,relevantColumnNames]

# Add meaningful labels to activity column -->  ASSIGNMENT #3
totalObservations <- merge(totalObservations, activityLabels, by="activityCode")
totalObservations$activityCode <- NULL

# Create new dataset ("aggregation") with average of each variable 
# for each activity and each subject -->  ASSIGNMENT #5

# Define by which fields data will be aggregated
aggregationLevels <- list(Groups.subjectCode=totalObservations$subjectCode, Groups.activityLabel=totalObservations$activityLabel)

# Aggregate data function
aggregation <- aggregate(totalObservations, by=aggregationLevels, mean, na.rm=TRUE)

# Remove redundant variables
aggregation$activityLabel <-NULL
aggregation$subjectCode <- NULL