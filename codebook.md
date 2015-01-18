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

## How data have been collected

From the original dataset info files:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

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

## Units

* *subjectCode* --> number from 1 to 30 identifying an user within a group of 30 volunteers within an age bracket of 19-48 years.
* *activityLabel* --> categorical variable identifying the activity performed by the user: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
* *all sensor data (see Variables)* --> not enough information / knowledge to get which specific units have been used. From the README:
    * Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration
    * Triaxial Angular velocity from the gyroscope.
    * A 561-feature vector with time and frequency domain variables.


## Cleaning / Data transformation

No need to clean the raw data since all records are complete.
The output "aggregation" table contains the original clean dataframe but grouped by activity and by subject. For each variable, records have been aggregated using the mean function

## Output files

*aggregation.txt* --> data grouped by subject and by activity and aggregated using the mean function



