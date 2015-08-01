/*********************************
Case Study - Class 12 - Exercise 1
Car Retail Price Prediction
STEP 1: Getting the Data
*****************************************/

LIBNAME CS12E01 '/folders/myshortcuts/myfolder/SSCode/JigsawCaseStudy12Exercise1_LinearModel/Datasets';

/** Importing the Dataset **/
PROC IMPORT
	Datafile='/folders/myshortcuts/myfolder/Foundation Exercises/Assignments/Class12 - Linear Regression with SAS/Cars_Retail_Price.csv'
	DBMS=CSV
	REPLACE
	OUT=CS12E01.CARS_RETAIL_PRICE;
RUN;

