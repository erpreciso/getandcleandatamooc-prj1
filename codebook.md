# CODEBOOK for Human Activity Recognition Using Smartphones Dataset

## Raw dataset info

**Human Activity Recognition Using Smartphones Dataset**

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.

Smartlab - Non Linear Complex Systems Laboratory

DITEN - Università degli Studi di Genova.

Via Opera Pia 11A, I-16145, Genoa, Italy.

activityrecognition@smartlab.ws

www.smartlab.ws

--------------------------------------------------------------------
## Raw data files used

- *UCI HAR Dataset/features.txt* --> get sensor data variable names
- *UCI HAR Dataset/activity_labels.txt* --> get activity meaningful labels
- *UCI HAR Dataset/test/y_test.txt* --> get activity code by record in the test dataset
- *UCI HAR Dataset/test/X_test.txt* --> get sensor data by record in the test dataset
- *UCI HAR Dataset/test/subject_test.txt* --> get subject code by record in the test dataset
- *UCI HAR Dataset/test/y_train.txt* --> get activity code by record in the train dataset
- *UCI HAR Dataset/test/X_train.txt* --> get sensor data by record in the train dataset
- *UCI HAR Dataset/test/subject_train.txt* --> get subject code by record in the train dataset

## Variables

From the original dataset info files:
> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

> These signals were used to estimate variables of the feature vector for each pattern (-XYZ' is used to denote 3-axial signals in the X, Y and Z directions):

> * tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals, and that are contained in this datasets, are, for each of the features above: 

* mean(): Mean value
* std(): Standard deviation

## Cleaning / Data transformation

No need to clean the raw data since all records are complete.
The output "aggregation" table contains the original clean dataframe but grouped by activity and by subject. For each variable, records have been aggregated using the mean function

## Output files

*aggregation.txt* --> data grouped by subject and by activity and aggregated using the mean function



