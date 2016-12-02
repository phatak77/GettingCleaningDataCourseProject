## Tidy Data Set

## Description
### Measurement of 30 volunteers (age bracket of 19-48) for six activities wearing smart phone in the waist.  The measurements were taken from the accelerometer and gyroscope.
### The data set gives the mean of each of the mesurement

## Format
### A data frame with 180 observations on 66 variables

## Details
### The training and the test data sets were read for the features, subject and activity
### subject : 30 Volunteers
### activity: 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
### features: The features for which the measurements are done.
### tidy data set contains the mean values for each subject and activity for the following features:
*timeBodyAccelerometer-mean()-X,timeBodyAccelerometer-mean()-Y,timeBodyAccelerometer-mean()-Z
*timeBodyAccelerometer-std()-X,timeBodyAccelerometer-std()-Y,timeBodyAccelerometer-std()-Z
*timeGravityAccelerometer-mean()-X,timeGravityAccelerometer-mean()-Y,timeGravityAccelerometer-mean()-Z
*timeGravityAccelerometer-std()-X,timeGravityAccelerometer-std()-Y,timeGravityAccelerometer-std()-Z
*timeBodyAccelerometerJerk-mean()-X,timeBodyAccelerometerJerk-mean()-Y,timeBodyAccelerometerJerk-mean()-Z
*timeBodyAccelerometerJerk-std()-X,timeBodyAccelerometerJerk-std()-Y,timeBodyAccelerometerJerk-std()-Z
*timeBodyGyroscope-mean()-X,timeBodyGyroscope-mean()-Y,timeBodyGyroscope-mean()-Z
*timeBodyGyroscope-std()-X,timeBodyGyroscope-std()-Y,timeBodyGyroscope-std()-Z
*timeBodyGyroscopeJerk-mean()-X,timeBodyGyroscopeJerk-mean()-Y,timeBodyGyroscopeJerk-mean()-Z
*timeBodyGyroscopeJerk-std()-X,timeBodyGyroscopeJerk-std()-Y,timeBodyGyroscopeJerk-std()-Z
*timeBodyAccelerometerMagnitude-mean()
*timeBodyAccelerometerMagnitude-std()
*timeGravityAccelerometerMagnitude-mean()
*timeGravityAccelerometerMagnitude-std()
*timeBodyAccelerometerJerkMagnitude-mean()
*timeBodyAccelerometerJerkMagnitude-std()
*timeBodyGyroscopeMagnitude-mean()
*timeBodyGyroscopeMagnitude-std()
*timeBodyGyroscopeJerkMagnitude-mean()
*timeBodyGyroscopeJerkMagnitude-std()
*frequencyBodyAccelerometer-mean()-X,frequencyBodyAccelerometer-mean()-Y,frequencyBodyAccelerometer-mean()-Z
*frequencyBodyAccelerometer-std()-X,frequencyBodyAccelerometer-std()-Y,frequencyBodyAccelerometer-std()-Z
*frequencyBodyAccelerometerJerk-mean()-X,frequencyBodyAccelerometerJerk-mean()-Y,frequencyBodyAccelerometerJerk-mean()-Z
*frequencyBodyAccelerometerJerk-std()-X,frequencyBodyAccelerometerJerk-std()-Y,frequencyBodyAccelerometerJerk-std()-Z
*frequencyBodyGyroscope-mean()-X,frequencyBodyGyroscope-mean()-Y,frequencyBodyGyroscope-mean()-Z
*frequencyBodyGyroscope-std()-X,frequencyBodyGyroscope-std()-Y,frequencyBodyGyroscope-std()-Z
*frequencyBodyAccelerometerMagnitude-mean()
*frequencyBodyAccelerometerMagnitude-std()
*frequencyBodyAccelerometerJerkMagnitude-mean()
*frequencyBodyAccelerometerJerkMagnitude-std()
*frequencyBodyGyroscopeMagnitude-mean()
*frequencyBodyGyroscopeMagnitude-std()
*frequencyBodyGyroscopeJerkMagnitude-mean()
*frequencyBodyGyroscopeJerkMagnitude-std()

##Code Description
###Step 1: The train and the test data for the activity, subjects and features are read in x_train, subject_train,y_train and x_test, subject_test, y_test respectively

###Step 2: The train and test data sets are merged row wise using "rbind"

###Step 3: Each column of the data set is given descriptive name.  The names to the feature columns were given from the features.txt file

###Step 4: All the three data sets that is features, activity and subject are combined columnwise to form a single data set named combined_data

###Step5: The mean and the std columns of features for each subject and activity are extracted to a new data set called "filtereddata"

###Step 6: The activity rows are given names from the activity_labels.txt based upon the value in the activity column

###Step 7: The abbreviation were replaced by the long descriptive names
* t = time
* Acc = Accelerometer
* f = frequency
* Gyro = Gyroscope
* Mag = Magnitude
* BodyBody = Body

###Step 8: Finally a tidy data set containing the mean of each variable for each activity and each subject is created





