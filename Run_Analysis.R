library(plyr)

#1. Merges the training and test sets to create one data set
#read the train data set
x_train <- read.table("./Dataset/train/X_train.txt",header = FALSE)
subject_train <- read.table("./Dataset/train/subject_train.txt",header = FALSE)
y_train <- read.table("./Dataset/train/y_train.txt",header = FALSE)

#read the test data set
x_test <- read.table("./Dataset/test/X_test.txt",header = FALSE)
subject_test <- read.table("./Dataset/test/subject_test.txt",header = FALSE)
y_test <- read.table("./Dataset/test/y_test.txt",header = FALSE)

#merge the datasets
features <- rbind(x_train,x_test)
subject <- rbind(subject_train,subject_test)
activity <- rbind(y_train,y_test)

#give descriptive names to the columns
#give name to activity and subject
names(activity) <- c("activity")
names(subject) <- c("subject")

#read the feature names from the feature names file
featurenames <- read.table("./Dataset/features.txt",header = FALSE)
names(features) <- featurenames[,2]

#merge the data to form a single data set
tempdata <- cbind(subject,activity)
combined_data <- cbind(features,tempdata)

#2. Extracts only the measurements on the mean and standard deviation for each measurement
extractedNames <- featurenames$V2[grep("mean\\(\\)|std\\(\\)",featurenames[,2])]
filteredNames <- c(as.character(extractedNames),"subject","activity")
filtereddata <- subset(combined_data,select = filteredNames)

#3 Uses descriptive activity names to name activities in the data set
activity_labels <- read.table("./Dataset/activity_labels.txt",header = FALSE)
filtereddata$activity <- activity_labels[,2][match(filtereddata$activity,activity_labels[,1])]

#4 Appropriately labels the data set with descriptive variable names
names(filtereddata)<- gsub("^t","time",names(filtereddata))
names(filtereddata)<- gsub("Acc","Accelerometer",names(filtereddata))
names(filtereddata)<- gsub("^f","frequency",names(filtereddata))
names(filtereddata)<- gsub("Gyro","Gyroscope",names(filtereddata))
names(filtereddata)<- gsub("Mag","Magnitude",names(filtereddata))
names(filtereddata)<- gsub("BodyBody","Body",names(filtereddata))

#5 From the data in step 4, create a second, independent tidy data set with the average 
#of each variable for each activity and each subject
#create a data set of mean of other columns with respect to subject & activity
tidydata <- aggregate(.~subject+activity,filtereddata,mean)
#sort / order the data set with respect to subject and then activity
tidydata <- tidydata[order(tidydata$subject,tidydata$activity),]

#write this data set to the file
write.csv(tidydata,file = "./Dataset/tidydata.csv",row.names = FALSE)