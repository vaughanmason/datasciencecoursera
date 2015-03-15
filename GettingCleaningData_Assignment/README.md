##run_analysis.R Script

The purpose of the run_analysis.R script is to join the Test and Train data obtained from the Samsung Galaxy S smartphone and obtain the average Mean and Stadard Deviation for each subject.

The codebook can be found in output_info.txt

The following steps are performed
<ol>
<li> Extract the Headings </li>
<li>Extract the Activity Labels </li>
<li>Extract the Subjects from Test and Train </li>
<li>Extract the X Data from Test and Train </li>
<li>Extract the Y Data from Test and Train </li>
<li>Get a list of the Mean and Standard Deviation Headings, using mean() and std() </li>
<li>Combine the data sets by subject, activity name and activity measurements(mean/std) </li>
<li>Convert the Subject and Activity Name into factors </li>
<li>Clean up the Column Names by removing first lower case character, creating spaces between words, upper casing mean and std and removing "-" </li>
<li>Add new names back to data set </li>
<li>Get a clean version of the data set by aggregating the data set, grouping by Subject and Activity Name and calculating the average(Mean) of each measurement. </li>
<li>Output the tidy data set to output.txt remvoing the row names. </li>
</ol>
