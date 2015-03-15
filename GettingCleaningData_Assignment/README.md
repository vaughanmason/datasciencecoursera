##run_analysis Script

The purpose of the run_analysis.R script is to join the Test and Train data obtained from the Samsung Galaxy S smartphone and obtain the average Mean and Stadard Deviation for each subject.

The following steps are performed
Extract the Headings
Extract the Activity Labels
Extract the Subjects from Test and Train
Extract the X Data from Test and Train
Extract the Y Data from Test and Train
Get a list of the Mean and Standard Deviation Headings, using mean() and std()
Combine the data sets by subject, activity name and activity measurements(mean/std)
Convert the Subject and Activity Name into factors
Clean up the Column Names by removing first lower case character, creating spaces between words, upper casing mean and std and removing "-"
Add new names back to data set
Get a clean version of the data set by aggregating the data set, grouping by Subject and Activity Name and calculating the average(Mean) of each measurement.
Output the tidy data set to output.txt remvoing the row names.
