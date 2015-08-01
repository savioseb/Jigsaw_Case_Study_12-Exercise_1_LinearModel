/*********************************
Case Study - Class 12 - Exercise 1
Car Retail Price Prediction
STEP 4: Splitting the Data into Development and Validation Samples
*****************************************/

LIBNAME CS12E01 '/folders/myshortcuts/myfolder/SSCode/JigsawCaseStudy12Exercise1_LinearModel/Datasets';




/** Splitting the Data into Development and Validation Samples **/
DATA CS12E01.DEVELOPMENT_SAMPLE CS12E01.VALIDATION_SAMPLE ;
	SET CS12E01.CARS_RETAIL_DUMMY_VARIABLES;
	IF RANUNI(100) < 0.9 
		THEN 
			OUTPUT CS12E01.DEVELOPMENT_SAMPLE; 
		ELSE 
			OUTPUT CS12E01.VALIDATION_SAMPLE;
RUN;