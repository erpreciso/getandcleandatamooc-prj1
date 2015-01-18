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

### Directory structure

<pre><code>
  ~ working directory
   |__ UCI HAR Dataset (folder)
   |  |__ activity_labels.txt
   |  |__ features.txt
   |  |__ features_info.txt
   |  |__ README.txt
   |  |  
   |  |__ test (folder)
   |  |  |__ subject_test.txt
   |  |  |__ X_test.txt
   |  |  |__ y_test.txt
   |  |  |__ Inertial Signals (folder)
   |  |     |__ -- raw data from signal sensors --
   |  |
   |  |__ train (folder)
   |     |__ subject_train.txt
   |     |__ X_train.txt
   |     |__ y_train.txt
   |     |__ Inertial Signals (folder)
   |        |__ -- raw data from signal sensors --
   |   
   |
   |__ script (folder)
      |_ run_analysis.R
      |_ codebook.md
</code></pre>

## How the script works

1. Set the working directory to where the raw data folder is contained
2. Load all variable names from the file features.txt in the variable allColumnNames
3. Create a vector relevantColumnNames containing only variables relevant from the exercise, by filtering for names containing substrings "mean()" or "std()"
4. Load activity labels in the dataframe activityLabels
5. Load all data files in separate dataframes, all with the same number of records:
    * y_test.txt / y_train.txt containing activity code by record
    * X_test.txt / X_train.txt containing all preprocessed sensor signals by record
    * subject_test.txt / subject_train.txt containing the subject code to which the record is refering to
6. Assign names to variables in each dataframe  -->  **ASSIGNMENT #4**
7. Merge activity code and subject code dataframes in the sensor signals dataframes X_test / X_train
8. Join train and test dataframes in totalObservations data frame  -->  **ASSIGNMENT #1**
9. Subset totalObservations to keep only relevant columns  -->  **ASSIGNMENT #2**
10. Add meaningful labels to activity column by merging the totalObservations dataframe with the activityLabels dataframe using the activityCode as key -->  **ASSIGNMENT #3**
11. Create new dataset ("aggregation") with average of each variable for each activity and each subject -->  **ASSIGNMENT #5**
    * Define by which fields data will be aggregated creating a list containing subjectCode and activityLabel variable names
    * Aggregate data using function aggregate
    * Remove redundant variables

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

*aggregation.txt* --> data grouped by subject and by activity; data aggregated with the mean function



