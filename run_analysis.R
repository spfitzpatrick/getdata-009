# run_analysis.R
# R script for project assignment of Getting and Cleaning Data course (getdata-009)

# Variables which are used to download the data, if this is not already present on our local file system
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destDataDir <- "."                    # This can be set to any directory the user desires
destDataFile <- "Dataset.zip"

# Internal directory included in the tree structure of the download ZIP file
# This is derived by visually inspecting the ZIP file in a (standalone) ZIP file archival tool - not in R itself
unzipDirectory <- "UCI HAR Dataset"

# Check to see if the target download directory and zip file already exist.
# If either is not found then download the data file and unzip it
# creating the target directory as we go
if((!file.exists(destDataDir)) | (!file.exists(paste(destDataDir, "/", destDataFile, sep = ""))))
    {
    message("Downloading data file - please wait ... ", appendLF = FALSE)
    dir.create(destDataDir, showWarnings = FALSE)
    download.file(url = fileURL, destfile = paste("./", destDataDir, "/", destDataFile, sep = ""), method = "curl", quiet = TRUE)
    message("Done", appendLF = TRUE)
    }

# Check to see if the unzipDirectory directory exists - this is stored within the zip file
# If not then unzip the (already present) zip file
if(!file.exists(paste(destDataDir, "/", unzipDirectory, sep = "")))
    {
    message("Unzipping data file - please wait ... ", appendLF = FALSE)
    thisDir <- getwd();
    setwd(destDataDir)
    unzip(destDataFile, overwrite = TRUE)
    setwd(thisDir)
    message("Done", appendLF = TRUE)        
    }

# Now that we have our data file unzipped, read the various files into R and bind them
# into a data frame with the right structure and elements to allow us to answer the questions set
# by the project

# For each data set (test OR train) do the following
# cbind 'subject_<set>', 'y_<set>', 'X_<set>'. 
# This will give a data frame with subject and activity as the first two columns, followed by a number of measurements
# When both the test and train subframes are assembled, rbind both together and use the 
# names from the features.txt file to provide indicative column names for the resultant data frame
# Finally the activity indicators are replaced with the textual descriptions from activity_labels.txt

# Start by reading in the features.txt file - this contains all variable names for the X_<set> files
strFileToRead <- paste(destDataDir, "/", unzipDirectory, "/", "features.txt", sep = "")
df.features <- read.table(file = strFileToRead, stringsAsFactors = FALSE)

# The X_<set> data sets are quite large. In an effort to conserve memory, we will determine those
# columns whose names contain the string '-mean' or '-std' (as noted in the features.txt file) and 
# only read those columns from the source .txt files This approach fits with the requirement described
# in step 2 of the project instructions 
# (Extracts only the measurements on the mean and standard deviation for each measurement.)
vRequiredColumns <- grep("-mean|-std", df.features[,2], ignore.case = TRUE)
vColNames <- df.features[vRequiredColumns,2]

# The column names from the supplied raw data set contain some characters that are not desireable
# if these are included in an R expression (e.g. -, (, )  ) So we replace these with harmless substitutes
vColNames <- gsub("[(]", "", vColNames)
vColNames <- gsub("[)]", "", vColNames)
vColNames <- gsub("[-]", "_", vColNames)

# Read in the TEST data set
strSetToRead <- "test"
message("Reading TEST data set - please wait ... ", appendLF = TRUE)

# Read in the 'X_test' data set
strFileToRead <- paste(destDataDir, "/", unzipDirectory, "/", strSetToRead, "/", "X_", strSetToRead, ".txt", sep = "")
df.X <- read.table(file = strFileToRead)[, vRequiredColumns]

# Read in the 'subject_test' data set
strFileToRead <- paste(destDataDir, "/", unzipDirectory, "/", strSetToRead, "/", "subject_", strSetToRead, ".txt", sep = "")
df.subject <- read.table(file = strFileToRead)

# Read in the 'y_test' (activity) data set
strFileToRead <- paste(destDataDir, "/", unzipDirectory, "/", strSetToRead, "/", "y_", strSetToRead, ".txt", sep = "")
df.y <- read.table(file = strFileToRead)

df.testset <- cbind(df.subject, df.y, df.X)

# Next read in the TRAIN data set
strSetToRead <- "train"
message("Reading TRAIN data set - please wait ... ", appendLF = TRUE)

# Read in the 'X_train' data set
strFileToRead <- paste(destDataDir, "/", unzipDirectory, "/", strSetToRead, "/", "X_", strSetToRead, ".txt", sep = "")
df.X <- read.table(file = strFileToRead)[, vRequiredColumns]

# Read in the 'subject_train' data set
strFileToRead <- paste(destDataDir, "/", unzipDirectory, "/", strSetToRead, "/", "subject_", strSetToRead, ".txt", sep = "")
df.subject <- read.table(file = strFileToRead)

# Read in the 'y_train' (activity) data set
strFileToRead <- paste(destDataDir, "/", unzipDirectory, "/", strSetToRead, "/", "y_", strSetToRead, ".txt", sep = "")
df.y <- read.table(file = strFileToRead)

df.trainset <- cbind(df.subject, df.y, df.X)

# Finally, rbind the test and train datasets together
df.tidy_dataset <- rbind(df.testset, df.trainset)

# Apply the selected column names from df.features back to df.tidy_dataset - prepending these with 'Subject' and 'Activity'
names(df.tidy_dataset) <- c("Subject", "Activity", vColNames)

# Delete the (now redundant) sub data frames used when assembling the individual files
# We do this just to save on memory consumption - although this shouldn't be a problem
# with any modern hardware
rm(df.X, df.y, df.subject, df.testset, df.trainset)

# Read in the activity_labels data, so that we can replace the numeric identifiers in the
# test and train data sets with more descriptive identifiers.
strFileToRead <- paste(destDataDir, "/", unzipDirectory, "/", "activity_labels.txt", sep = "")
df.activity_labels <- read.table(file = strFileToRead, stringsAsFactors = FALSE)

# Replace any non-alphabetical characters in the labels with spaces to make them more
# human readable
for(iDummy in 1:nrow(df.activity_labels))
    {
    df.activity_labels[iDummy,2] <- gsub("[^A-Z]", " ", df.activity_labels[iDummy,2])
    }

# Replace the numeric activity identifiers with the labels as extracted from the
# activity_labels data file
df.tidy_dataset$Activity <- as.character(df.tidy_dataset$Activity)
df.tidy_dataset$Activity <- df.activity_labels[as.numeric(df.tidy_dataset$Activity), 2] 

# df.tidy_dataset is now 'tidy' (within the scope of this assignment)
# Save this to disk
write.table(df.tidy_dataset, file = "./tidy_data.txt", row.names = FALSE)

# Split the tidy data frame on the Subject and Activity factors. This gives a list of sub data frames
# - one for each combination of Subject and Activity.
l.subframesSubjectActivity <- split(df.tidy_dataset, list(df.tidy_dataset$Subject, df.tidy_dataset$Activity))

# This will be the data frame that holds our final resultant data. 
# Its layout will be the same as df.tidy_dataset
# Each row in this data frame will the means of all measurements observed for each combination of subject and activity
# Also included in this data frame is an extra column 'Aggregation Method'
# This tells the user how the source data has been aggregated by this script.
# For this assignment this is always 'mean'
df.resultset <- data.frame(matrix(vector(), 0, ncol(df.tidy_dataset) + 1), stringsAsFactors=FALSE)

# Step through each sub frame contained in the list and handle the generation of the column means
# This can certainly be better achieved by use of an *apply function or dplyr !

for (iDummy in 1:length(names(l.subframesSubjectActivity)))
    {
    # A single row dataframe holding the subject, activity and observations         
    df.singlerow <- data.frame(matrix(vector(), 0, ncol(df.tidy_dataset) + 1), stringsAsFactors=FALSE)
    
    # Get the subject identifier and activity name from the named list element
    iSubjectNumber <- strsplit(names(l.subframesSubjectActivity)[iDummy], "[.]")[[1]][1]
    sActivityName <- strsplit(names(l.subframesSubjectActivity)[iDummy], "[.]")[[1]][2]
    sAggregationMethod <- 'mean'
    
    # Get the column means for columns 3 -> n for the rest of the sub frame
    v.meansSubjectActivity <- colMeans(l.subframesSubjectActivity[[iDummy]][3:ncol(l.subframesSubjectActivity[[iDummy]])])
    
    # Fill the single row data frame with subject, activity, aggregation method and measures data
    df.singlerow[1,1] <- iSubjectNumber
    df.singlerow[1,2] <- sActivityName
    df.singlerow[1,3] <- sAggregationMethod
    
    for(iMeasures in 3:ncol(l.subframesSubjectActivity[[iDummy]]))
        {
        df.singlerow[1, (iMeasures + 1)] <- v.meansSubjectActivity[(iMeasures - 2)]    
        }

    # And append this new row to the final resultant data frame
    df.resultset <- rbind(df.resultset, df.singlerow)
    }

# Apply the correct column names to the resultant dataframe
names(df.resultset) <- c("Subject","Activity","Aggregation Method",vColNames)

# And write the result to disk
write.table(df.resultset, file = "./result.txt", row.names = FALSE)

message("Tidy data set is saved as tidy_data.txt")
message("Result data set saved as result.txt")