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
    * Write in output file

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