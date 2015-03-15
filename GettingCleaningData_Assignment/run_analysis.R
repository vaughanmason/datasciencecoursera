##run_analysis

##Read Headings
headings<- read.table("data/features.txt");

##Read Activity Labels
activities<- read.table("data/activity_labels.txt");
names(activities)<- c("ActivityID","Activity_Name");
##Get Subjects
##Test
sub_test<- read.table("data/test/subject_test.txt")
names(sub_test)<- "Subject";
##Train
sub_train<- read.table("data/train/subject_train.txt")
names(sub_train)<- "Subject";
##Get X
##Get X Column Names
xcnames<- headings[,2]

##Test
x_test<- read.table("data/test/X_test.txt");
names(x_test)<- xcnames;
##Train
x_train<- read.table("data/train/X_train.txt");
names(x_train)<- xcnames;

##Test
y_test<- read.table("data/test/Y_test.txt");
names(y_test)<- "ActivityID";
y_test<- merge(y_test,activities, by.x="ActivityID", by.y="ActivityID", all.x=TRUE);
##Train
y_train<- read.table("data/train/Y_train.txt");
names(y_train)<- "ActivityID";
y_train<- merge(y_train,activities, by.x="ActivityID", by.y="ActivityID", all.x=TRUE);

##Mean/Std Headings
meanStdHeadings<- grep("*mean\\(|*std\\(",headings[,2]);
##Combine Datasets
test<-cbind(sub_test,y_test[2],x_test[,meanStdHeadings]);
train<-cbind(sub_train,y_train[2],x_train[,meanStdHeadings]);
dataset<- rbind(test,train);
dataset$Subject<- as.factor(dataset$Subject);
dataset$Activity_Name<- as.factor(dataset$Activity_Name);

##Clean up Names
cnames<- names(dataset);
cnames<- sub("^[a-z]","",cnames);
cnames<- gsub("([a-z])([A-Z])","\\1 \\2",cnames);
cnames<- gsub("mean\\(\\)","Mean",cnames);
cnames<- gsub("std\\(\\)","Std",cnames);
cnames<-  gsub("\\-"," ",cnames);

names(dataset)<- cnames;



#Tidy Data Set
tidyDataSet<- aggregate(dataset[,3:68], list(Subject=dataset$Subject,Activity=dataset$Activity_Name),mean);
write.table(tidyDataSet,"output.txt",row.name=FALSE)

