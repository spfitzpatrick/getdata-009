### Code book:

The output data provided by this script is a further processing of the Human Activity Recognition dataset available from the UCI Machine Learning Repository.
This input dataset records the bodily movements of 30 subjects using the in-built sensors of a smart phone. The activity being performed by each subject
at the time of measurement is also noted and is categorized in 6 categories.

Each record of the output data set provided by this script consists of the following

- Numeric subject identifier
- Textual description of the activity being carried out by the subject
- Textual description of the aggregation method applied to the original source data (mean)
79 measurements selected from the original source data. For each unique combination of subject and activity the mean of all samples across all 79
variables is computed 

The 79 measurements are listed below: 

- t* are time domain based signals
- f* are frequency domain provided by Fourier transform of the input t* signals

- G is units of gravity
- Hz is units of hertz (cycles/sec) 

<table>

<tr><td></td>	<td>Name</td>			<td>Units</td>		<td>Description</td>
<tr><td>1</td>  <td>tBodyAcc_mean_X</td>	<td>G</td>		<td>Mean of body acceleration X axis</td></tr>
<tr><td>2</td>  <td>tBodyAcc_mean_Y</td>	<td>G</td>		<td>Mean of body acceleration Y axis</td></tr>
<tr><td>3</td>  <td>tBodyAcc_mean_Z</td>	<td>G</td>		<td>Mean of body acceleration Z axis</td></tr>
<tr><td>4</td>  <td>tBodyAcc_std_X</td>		<td>G</td>		<td>Std deviation of body acceleration X axis</td></tr>
<tr><td>5</td>  <td>tBodyAcc_std_Y</td>		<td>G</td>		<td>Std deviation of body acceleration Y axis</td></tr>
<tr><td>6</td>	<td>tBodyAcc_std_Z</td>		<td>G</td>		<td>Std deviation of body acceleration Z axis</td></tr>
<tr><td>7</td>	<td>tGravityAcc_mean_X</td>	<td>G</td>		<td>Mean of gravity acceleration X axis</td></tr>
<tr><td>8</td>	<td>tGravityAcc_mean_Y</td>	<td>G</td>		<td>Mean of gravity acceleration Y axis</td></tr>
<tr><td>9</td>	<td>tGravityAcc_mean_Z</td>	<td>G</td>		<td>Mean of gravity acceleration Z axis</td></tr>
<tr><td>10</td>	<td>tGravityAcc_std_X</td>	<td>G</td>		<td>Std deviation of gravity acceleration X axis</td></tr>
<tr><td>11</td>	<td>tGravityAcc_std_Y</td>	<td>G</td>		<td>Std deviation of gravity acceleration Y axis</td></tr>
<tr><td>12</td>	<td>tGravityAcc_std_Z</td>	<td>G</td>		<td>Std deviation of gravity acceleration Z axis</td></tr>
<tr><td>13</td>	<td>tBodyAccJerk_mean_X</td>	<td>G/sec</td>		<td>Mean of rate of body acceleration X axis</td></tr>
<tr><td>14</td>	<td>tBodyAccJerk_mean_Y</td>	<td>G/sec</td>		<td>Mean of rate of body acceleration Y axis</td></tr>
<tr><td>15</td>	<td>tBodyAccJerk_mean_Z</td>	<td>G/sec</td>		<td>Mean of rate of body acceleration Z axis</td></tr>
<tr><td>16</td>	<td>tBodyAccJerk_std_X</td>	<td>G/sec</td>		<td>Std deviation of rate of body acceleration X axis</td></tr>
<tr><td>17</td>	<td>tBodyAccJerk_std_Y</td>	<td>G/sec</td>		<td>Std deviation of rate of body acceleration Y axis</td></tr>
<tr><td>18</td>	<td>tBodyAccJerk_std_Z</td>	<td>G/sec</td>		<td>Std deviation of rate of body acceleration Z axis</td></tr>
<tr><td>19</td>	<td>tBodyGyro_mean_X</td>	<td>Radians/sec</td>	<td>Mean of rate of body rotation X axis</td></tr>
<tr><td>20</td>	<td>tBodyGyro_mean_Y</td>	<td>Radians/sec</td>	<td>Mean of rate of body rotation Y axis</td></tr>
<tr><td>21</td>	<td>tBodyGyro_mean_Z</td>	<td>Radians/sec</td>	<td>Mean of rate of body rotation Z axis</td></tr>
<tr><td>22</td>	<td>tBodyGyro_std_X</td>	<td>Radians/sec</td>	<td>Std deviation of rate of body rotation X axis</td></tr>
<tr><td>23</td>	<td>tBodyGyro_std_Y</td>	<td>Radians/sec</td>	<td>Std deviation of rate of body rotation Y axis</td></tr>
<tr><td>24</td>	<td>tBodyGyro_std_Z</td>	<td>Radians/sec</td>	<td>Std deviation of rate of body rotation Z axis</td></tr>
<tr><td>25</td>	<td>tBodyGyroJerk_mean_X</td>	<td>Radians/sec/sec</td><td>Mean of 1st derivative of rate of body rotation X axis</td></tr>
<tr><td>26</td>	<td>tBodyGyroJerk_mean_Y</td>	<td>Radians/sec/sec</td><td>Mean of 1st derivative of rate of body rotation Y axis</td></tr>
<tr><td>27</td>	<td>tBodyGyroJerk_mean_Z</td>	<td>Radians/sec/sec</td><td>Mean of 1st derivative of rate of body rotation Z axis</td></tr>
<tr><td>28</td>	<td>tBodyGyroJerk_std_X</td>	<td>Radians/sec/sec</td><td>Std deviation of 1st derivative of rate of body rotation X axis</td></tr>
<tr><td>29</td>	<td>tBodyGyroJerk_std_Y</td>	<td>Radians/sec/sec</td><td>Std deviation of 1st derivative of rate of body rotation Y axis</td></tr>
<tr><td>30</td>	<td>tBodyGyroJerk_std_Z</td>	<td>Radians/sec/sec</td><td>Std deviation of 1st derivative of rate of body rotation Z axis</td></tr>
<tr><td>31</td>	<td>tBodyAccMag_mean</td>	<td>G</td>		<td>Mean of absolute magnitudes of body acceleration XYZ axes</td></tr>
<tr><td>32</td>	<td>tBodyAccMag_std</td>	<td>G</td>		<td>Std deviation of absolute magnitudes of body acceleration XYZ axes</td></tr>
<tr><td>33</td>	<td>tGravityAccMag_mean</td>	<td>G</td>		<td>Mean of absolute magnitudes of gravity acceleration XYZ axes</td></tr>
<tr><td>34</td>	<td>tGravityAccMag_std</td>	<td>G</td>		<td>Std deviation of absolute magnitudes of gravity acceleration XYZ axes</td></tr>
<tr><td>35</td>	<td>tBodyAccJerkMag_mean</td>	<td>G/sec</td>		<td>Mean of absolute magnitudes of rate of body acceleration XYZ axes</td></tr>
<tr><td>36</td>	<td>tBodyAccJerkMag_std</td>	<td>G/sec</td>		<td>Std deviation of absolute magnitudes of rate of body acceleration XYZ axes</td></tr>
<tr><td>37</td>	<td>tBodyGyroMag_mean</td>	<td>Radian/sec</td>	<td>Mean of absolute magnitudes rate of body rotation XZY axes</td></tr>
<tr><td>38</td>	<td>tBodyGyroMag_std</td>	<td>Radian/sec</td>	<td>Std deviation of absolute magnitudes rate of body rotation XZY axes</td></tr>
<tr><td>39</td>	<td>tBodyGyroJerkMag_mean</td>	<td>Radian/sec/sec</td>	<td>Mean of absolute magnitudes of 1st derivative of rate of body rotation XYZ axes</td></tr>
<tr><td>40</td>	<td>tBodyGyroJerkMag_std</td>	<td>Radian/sec/sec</td>	<td>Std deviation of absolute magnitudes of 1st derivative of rate of body rotation XYZ axes</td></tr>
<tr><td>41</td>	<td>fBodyAcc_mean_X</td>	<td>Dimensionless</td>	<td>Mean of FFT transformed body acceleration X axis</td></tr>
<tr><td>42</td>	<td>fBodyAcc_mean_Y</td>	<td>Dimensionless</td>	<td>Mean of FFT transformed body acceleration Y axis</td></tr>
<tr><td>43</td>	<td>fBodyAcc_mean_Z</td>	<td>Dimensionless</td>	<td>Mean of FFT transformed body acceleration Z axis</td></tr>
<tr><td>44</td>	<td>fBodyAcc_std_X</td>		<td>Dimensionless</td>	<td>Std deviation of FFT transformed body acceleration X axis</td></tr>
<tr><td>45</td>	<td>fBodyAcc_std_Y</td>		<td>Dimensionless</td>	<td>Std deviation of FFT transformed body acceleration Y axis</td></tr>
<tr><td>46</td>	<td>fBodyAcc_std_Z</td>		<td>Dimensionless</td>	<td>Std deviation of FFT transformed body acceleration Z axis</td></tr>
<tr><td>47</td>	<td>fBodyAcc_meanFreq_X</td>	<td>Hz</td>		<td>Mean of body acceleration frequency X axis</td></tr>
<tr><td>48</td>	<td>fBodyAcc_meanFreq_Y</td>	<td>Hz</td>		<td>Mean of body acceleration frequency Y axis</td></tr>
<tr><td>49</td>	<td>fBodyAcc_meanFreq_Z</td>	<td>Hz</td>		<td>Mean of body acceleration frequency Z axis</td></tr>
<tr><td>50</td>	<td>fBodyAccJerk_mean_X</td>	<td>Dimensionless</td>	<td>Mean of FFT transformed rate of body acceleration X axis</td></tr>
<tr><td>51</td>	<td>fBodyAccJerk_mean_Y</td>	<td>Dimensionless</td>	<td>Mean of FFT transformed rate of body acceleration Y axis</td></tr>
<tr><td>52</td>	<td>fBodyAccJerk_mean_Z</td>	<td>Dimensionless</td>	<td>Mean of FFT transformed rate of body acceleration Z axis</td></tr>
<tr><td>53</td>	<td>fBodyAccJerk_std_X</td>	<td>Dimensionless</td>	<td>Std deviation of FFT transformed rate of body acceleration X axis</td></tr>
<tr><td>54</td>	<td>fBodyAccJerk_std_Y</td>	<td>Dimensionless</td>	<td>Std deviation of FFT transformed rate of body acceleration Y axis</td></tr>
<tr><td>55</td>	<td>fBodyAccJerk_std_Z</td>	<td>Dimensionless</td>	<td>Std deviation of FFT transformed rate of body acceleration Z axis</td></tr>
<tr><td>56</td>	<td>fBodyAccJerk_meanFreq_X</td><td>Hz</td>		<td>Mean of rate of body acceleration frequency X axis</td></tr>
<tr><td>57</td>	<td>fBodyAccJerk_meanFreq_Y</td><td>Hz</td>		<td>Mean of rate of body acceleration frequency Y axis</td></tr>
<tr><td>58</td>	<td>fBodyAccJerk_meanFreq_Z</td><td>Hz</td>		<td>Mean of rate of body acceleration frequency Z axis</td></tr>
<tr><td>59</td>	<td>fBodyGyro_mean_X</td>	<td>Dimensionless</td>	<td>Mean of FFT transformed rate of body rotation X axis</td></tr>
<tr><td>60</td>	<td>fBodyGyro_mean_Y</td>	<td>Dimensionless</td>	<td>Mean of FFT transformed rate of body rotation Y axis</td></tr>
<tr><td>61</td>	<td>fBodyGyro_mean_Z</td>	<td>Dimensionless</td>	<td>Mean of FFT transformed rate of body rotation Z axis</td></tr>
<tr><td>62</td>	<td>fBodyGyro_std_X</td>	<td>Dimensionless</td>	<td>Std deviation of FFT transformed rate of body rotation X axis</td></tr>
<tr><td>63</td>	<td>fBodyGyro_std_Y</td>	<td>Dimensionless</td>	<td>Std deviation of FFT transformed rate of body rotation Y axis</td></tr>
<tr><td>64</td>	<td>fBodyGyro_std_Z</td>	<td>Dimensionless</td>	<td>Std deviation of FFT transformed rate of body rotation Z axis</td></tr>
<tr><td>65</td>	<td>fBodyGyro_meanFreq_X</td>	<td>Hz</td>		<td>Mean frequency of rate of body rotation X axis</td></tr>
<tr><td>66</td>	<td>fBodyGyro_meanFreq_Y</td>	<td>Hz</td>		<td>Mean frequency of rate of body rotation Y axis</td></tr>
<tr><td>67</td>	<td>fBodyGyro_meanFreq_Z</td>	<td>Hz</td>		<td>Mean frequency of rate of body rotation Z axis</td></tr>
<tr><td>68</td>	<td>fBodyAccMag_mean</td>	<td>Dimensionless</td>	<td>Mean of FFT transformed absolute magnitudes of body acceleration XYZ axes</td></tr>
<tr><td>69</td>	<td>fBodyAccMag_std</td>	<td>Dimensionless</td>	<td>Std deviation of FFT transformed absolute magnitudes of body acceleration XYZ axes</td></tr>
<tr><td>70</td>	<td>fBodyAccMag_meanFreq</td>	<td>Hz</td>		<td>Mean frequency of absolute magnitudes of body acceleration XYZ axes</td></tr>
<tr><td>71</td>	<td>fBodyBodyAccJerkMag_mean</td><td>Dimensionless</td>	<td>Mean of FFT transformed absolute magnitudes of rate of body acceleration XYZ axes</td></tr>
<tr><td>72</td> <td>fBodyBodyAccJerkMag_std</td><td>Dimensionless</td>	<td>Std deviation of FFT transformed absolute magnitudes of rate of body acceleration XYZ axes</td></tr>
<tr><td>73</td> <td>fBodyBodyAccJerkMag_meanFreq</td><td>Hz</td>	<td>Mean frequency of absolute magnitudes of rate of body acceleration XYZ axes</td></tr>
<tr><td>74</td> <td>fBodyBodyGyroMag_mean</td>	<td>Dimensionless</td>	<td>Mean of FFT transformed absolute magnitudes rate of body rotation XZY axes</td></tr>
<tr><td>75</td> <td>fBodyBodyGyroMag_std</td>	<td>Dimensionless</td>	<td>Std deviation of FFT transformed absolute magnitudes rate of body rotation XZY axes</td></tr>
<tr><td>76</td> <td>fBodyBodyGyroMag_meanFreq</td><td>Hz</td>		<td>Mean frequency of absolute magnitudes rate of body rotation XZY axes</td></tr>
<tr><td>77</td> <td>fBodyBodyGyroJerkMag_mean</td><td>Dimensionless</td><td>Mean of FFT transformed absolute magnitudes of 1st derivative of rate of body rotation XYZ axes</td></tr>	
<tr><td>78</td> <td>fBodyBodyGyroJerkMag_std</td><td>Dimensionless</td>	<td>Std deviation of FFT transformed absolute magnitudes of 1st derivative of rate of bodyrotation XYZ axes</td></tr>
<tr><td>79</td> <td>fBodyBodyGyroJerkMag_meanFreq</td><td>Hz</td>	<td>Mean frequency of absolute magnitudes of 1st derivative of rate of body rotation XYZ axes</td></tr>
</table>

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

The use of the dataset is acknowledged to be courtesy of
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes_Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware_Friendly Support Vector Machine. International Workshop of Ambient Assisted Living IWAAL 2012. Vitoria_Gasteiz, Spain. Dec 2012



### Study design:

This dataset was collected from a copy originally provided to the UCI Machine Learning Repository.
The URL for the dataset is 
	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The original UCI dataset is available at
	http://archive.ics.uci.edu/ml/machine-learning-databases/00240/

