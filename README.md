### Processing Steps :

The raw input data was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The download zip file was placed in the same directory as the run_analysis.R script

The R working directory is set to the location where the datafile and the R script are located

The run_analysis.R script was run. No command line variables are required.

The output of the run_analysis.R script consists of 2 files. These are written to the same
directory as that in which the run_analysis.R script is located.

- result.txt
The resultant dataset generated as specified in step 5 of the assignment

- tidy_dataset.txt
The 'tidy' dataset as specified in steps 1-4 of the assignment



### Script workings :

The script will search for and unzip the file 'Dataset.zip'. 
If the zip file is not present then the script will attempt to download it from

 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Once the zip file is available the script will unzip this (if this is not already done) to prepare for processing.

The source data is divided over 'test' and 'train' data sets. Within each set a division is made between

* the measurements being provided
* the activity being performed by the subject at the time of measurement 
* a numeric identifier for the subject

All of these separate input are combined and finally the test and train dataset are joined. In an effort to save memory
the script only reads those input variables which are of interest for this assignment (mean and standard deviation)
The reader should refer to the code book for a detailed explanation of each variable and the rationale employed in selection. 

Once the target variables are read in, various steps are performed to allocate meaningful names to the columns and to
provide meaningful activity descriptions each record. Finally the 'tidy' dataset is saved to disk for reference purposes.

The 'tidy' dataset is then split by each unique combination of subject and activity. 
For each subset, the column means of each input variable is computed. The results are again assigned meaningful
column names before being saved to disk.

The row layouts of the tidy and result sets are almost identical, except in one regard.
The result dataset contains an extra column 'Aggregation Method' which is designed to remind the
end user of the method applied in summarizing the various discete measurements of the 'tidy' dataset.
In the context of this assignment, this always contains the value 'mean'.

