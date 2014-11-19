### Code book:

t* are time domain based signals
f* are frequency domain provided by Fourier transform of the input t* signals

The output data provided by this script is a further processing of the Human Activity Recognition dataset available from the UCI Machine Learning Repository.
This input dataset records the bodily movements of 30 subjects using the in-built sensors of a smart phone. The activity being performed by each subject
at the time of measurement is also noted and is categorized in 6 categories.

Each record of the output data set provided by this script consists of the following

Numeric subject identifier
Textual description of the activity being carried out by the subject
Textual description of the aggregation method applied to the original source data (mean)
79 measurements selected from the original source data. For each unique combination of subject and activity the mean of all samples across all 79
variables is computed 

The 79 measurements are as follows: 

   Name					Units		Description

1  tBodyAcc_mean_X			G		Mean of body acceleration X axis
2  tBodyAcc_mean_Y			G		Mean of body acceleration Y axis
3  tBodyAcc_mean_Z			G		Mean of body acceleration Z axis
4  tBodyAcc_std_X			G		Std deviation of body acceleration X axis
5  tBodyAcc_std_Y			G		Std deviation of body acceleration Y axis
6  tBodyAcc_std_Z			G		Std deviation of body acceleration Z axis
7  tGravityAcc_mean_X			G		Mean of gravity acceleration X axis
8  tGravityAcc_mean_Y			G		Mean of gravity acceleration Y axis
9  tGravityAcc_mean_Z			G		Mean of gravity acceleration Z axis
10 tGravityAcc_std_X			G		Std deviation of gravity acceleration X axis
11 tGravityAcc_std_Y			G		Std deviation of gravity acceleration Y axis
12 tGravityAcc_std_Z			G		Std deviation of gravity acceleration Z axis
13 tBodyAccJerk_mean_X			G/sec		Mean of rate of body acceleration X axis
14 tBodyAccJerk_mean_Y			G/sec		Mean of rate of body acceleration Y axis
15 tBodyAccJerk_mean_Z			G/sec		Mean of rate of body acceleration Z axis
16 tBodyAccJerk_std_X			G/sec		Std deviation of rate of body acceleration X axis
17 tBodyAccJerk_std_Y			G/sec		Std deviation of rate of body acceleration Y axis
18 tBodyAccJerk_std_Z			G/sec		Std deviation of rate of body acceleration Z axis
19 tBodyGyro_mean_X			Radians/sec	Mean of rate of body rotation X axis
20 tBodyGyro_mean_Y			Radians/sec	Mean of rate of body rotation Y axis
21 tBodyGyro_mean_Z			Radians/sec	Mean of rate of body rotation Z axis
22 tBodyGyro_std_X			Radians/sec	Std deviation of rate of body rotation X axis
23 tBodyGyro_std_Y			Radians/sec	Std deviation of rate of body rotation Y axis
24 tBodyGyro_std_Z			Radians/sec	Std deviation of rate of body rotation Z axis
25 tBodyGyroJerk_mean_X			Radians/sec/sec	Mean of 1st derivative of rate of body rotation X axis
26 tBodyGyroJerk_mean_Y			Radians/sec/sec	Mean of 1st derivative of rate of body rotation Y axis
27 tBodyGyroJerk_mean_Z			Radians/sec/sec	Mean of 1st derivative of rate of body rotation Z axis
28 tBodyGyroJerk_std_X			Radians/sec/sec	Std deviation of 1st derivative of rate of body rotation X axis
29 tBodyGyroJerk_std_Y			Radians/sec/sec	Std deviation of 1st derivative of rate of body rotation Y axis
30 tBodyGyroJerk_std_Z			Radians/sec/sec	Std deviation of 1st derivative of rate of body rotation Z axis
31 tBodyAccMag_mean			G		Mean of absolute magnitudes of body acceleration XYZ axes
32 tBodyAccMag_std			G		Std deviation of absolute magnitudes of body acceleration XYZ axes
33 tGravityAccMag_mean			G		Mean of absolute magnitudes of gravity acceleration XYZ	axes
34 tGravityAccMag_std			G		Std deviation of absolute magnitudes of gravity acceleration XYZ axes
35 tBodyAccJerkMag_mean			G/sec		Mean of absolute magnitudes of rate of body acceleration XYZ axes
36 tBodyAccJerkMag_std			G/sec		Std deviation of absolute magnitudes of rate of body acceleration XYZ axes
37 tBodyGyroMag_mean			Radian/sec	Mean of absolute magnitudes rate of body rotation XZY axes
38 tBodyGyroMag_std			Radian/sec	Std deviation of absolute magnitudes rate of body rotation XZY axes
39 tBodyGyroJerkMag_mean		Radian/sec/sec	Mean of absolute magnitudes of 1st derivative of rate of body rotation XYZ axes
40 tBodyGyroJerkMag_std			Radian/sec/sec	Std deviation of absolute magnitudes of 1st derivative of rate of body rotation XYZ axes
41 fBodyAcc_mean_X			Dimensionless	Mean of FFT transformed body acceleration X axis
42 fBodyAcc_mean_Y			Dimensionless	Mean of FFT transformed body acceleration Y axis
43 fBodyAcc_mean_Z			Dimensionless	Mean of FFT transformed body acceleration Z axis
44 fBodyAcc_std_X			Dimensionless	Std deviation of FFT transformed body acceleration X axis
45 fBodyAcc_std_Y			Dimensionless	Std deviation of FFT transformed body acceleration Y axis
46 fBodyAcc_std_Z			Dimensionless	Std deviation of FFT transformed body acceleration Z axis
47 fBodyAcc_meanFreq_X			Hz		Mean of body acceleration frequency X axis
48 fBodyAcc_meanFreq_Y			Hz		Mean of body acceleration frequency Y axis
49 fBodyAcc_meanFreq_Z			Hz		Mean of body acceleration frequency Z axis
50 fBodyAccJerk_mean_X			Dimensionless	Mean of FFT transformed rate of body acceleration X axis
51 fBodyAccJerk_mean_Y			Dimensionless	Mean of FFT transformed rate of body acceleration Y axis
52 fBodyAccJerk_mean_Z			Dimensionless	Mean of FFT transformed rate of body acceleration Z axis
53 fBodyAccJerk_std_X			Dimensionless	Std deviation of FFT transformed rate of body acceleration X axis
54 fBodyAccJerk_std_Y			Dimensionless	Std deviation of FFT transformed rate of body acceleration Y axis
55 fBodyAccJerk_std_Z			Dimensionless	Std deviation of FFT transformed rate of body acceleration Z axis
56 fBodyAccJerk_meanFreq_X		Hz		Mean of rate of body acceleration frequency X axis
57 fBodyAccJerk_meanFreq_Y		Hz		Mean of rate of body acceleration frequency Y axis
58 fBodyAccJerk_meanFreq_Z		Hz		Mean of rate of body acceleration frequency Z axis
59 fBodyGyro_mean_X			Dimensionless	Mean of FFT transformed rate of body rotation X axis
60 fBodyGyro_mean_Y			Dimensionless	Mean of FFT transformed rate of body rotation Y axis
61 fBodyGyro_mean_Z			Dimensionless	Mean of FFT transformed rate of body rotation Z axis
62 fBodyGyro_std_X			Dimensionless	Std deviation of FFT transformed rate of body rotation X axis
63 fBodyGyro_std_Y			Dimensionless	Std deviation of FFT transformed rate of body rotation Y axis
64 fBodyGyro_std_Z			Dimensionless	Std deviation of FFT transformed rate of body rotation Z axis
65 fBodyGyro_meanFreq_X			Hz		Mean frequency of rate of body rotation X axis
66 fBodyGyro_meanFreq_Y			Hz		Mean frequency of rate of body rotation Y axis
67 fBodyGyro_meanFreq_Z			Hz		Mean frequency of rate of body rotation Z axis
68 fBodyAccMag_mean			Dimensionless	Mean of FFT transformed absolute magnitudes of body acceleration XYZ axes
69 fBodyAccMag_std			Dimensionless	Std deviation of FFT transformed absolute magnitudes of body acceleration XYZ axes
70 fBodyAccMag_meanFreq			Hz		Mean frequency of absolute magnitudes of body acceleration XYZ axes
71 fBodyBodyAccJerkMag_mean		Dimensionless	Mean of FFT transformed absolute magnitudes of rate of body acceleration XYZ axes are these typo's
72 fBodyBodyAccJerkMag_std		Dimensionless	Std deviation of FFT transformed absolute magnitudes of rate of body acceleration XYZ axes are these
73 fBodyBodyAccJerkMag_meanFreq 	Hz		Mean frequency of absolute magnitudes of rate of body acceleration XYZ axes is this a typo?	
74 fBodyBodyGyroMag_mean		Dimensionless	Mean of FFT transformed absolute magnitudes rate of body rotation XZY axes
75 fBodyBodyGyroMag_std			Dimensionless	Std deviation of FFT transformed absolute magnitudes rate of body rotation XZY axes
76 fBodyBodyGyroMag_meanFreq		Hz		Mean frequency of absolute magnitudes rate of body rotation XZY axes
77 fBodyBodyGyroJerkMag_mean		Dimensionless	Mean of FFT transformed absolute magnitudes of 1st derivative of rate of body rotation XYZ axes	
78 fBodyBodyGyroJerkMag_std		Dimensionless	Std deviation of FFT transformed absolute magnitudes of 1st derivative of rate of bodyrotation XYZ axes
79 fBodyBodyGyroJerkMag_meanFreq	Hz		Mean frequency of absolute magnitudes of 1st derivative of rate of body rotation XYZ axes


### Summary choices:

In the original data retrieved fromthe UCI Machine Learning Repository there are a total of 561 features (measurements) provided.
Of these only those measurements which corresponded to a mean or standard deviation measurement were chosen for processing - 79 in total.
The reduced data set of these 79 measurements is available in the file 'tidy_data.txt'

For those measurements selected, a breakdown by subject and activity was performed and the mean for each of the 79 target measurements
was computed. The resultant dat set is available in the file 'result.txt'

The interested user is referred to the features_info.txt file provided with the data set for a more complete description of
the techniques used to derive the 561 features from the raw data assembled by the original project team.

Some of the resultant variables are specified as dimensionless. The application of a fourier transform to time domain measurements
results in a frequency domain output. The original units of measure (G, radians etc) are no longer applicable to the transformed data.
Excepting those cases where the original code book specifies that an f* measurement is a frequency measurement (identified by the _meanFreq suffix)
the f* measurements cannot be interpreted in the same units as the original t* measurements from which they are derived.  

The use of the dataset is acknowdged to be courtesy of
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes_Ortiz. Human Activity Recognition on Smartphones using a Multiclass 

Hardware_Friendly Support Vector Machine. International Workshop of Ambient Assisted Living IWAAL 2012. Vitoria_Gasteiz, Spain. Dec 2012



### Study design:

This dataset was collected from a copy originally provided to the UCI Machine Learning Repository.
The URL for the dataset is 
	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The original UCI dataset is available at
	http://archive.ics.uci.edu/ml/machine-learning-databases/00240/

