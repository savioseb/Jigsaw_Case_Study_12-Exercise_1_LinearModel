/*********************************
Case Study - Class 12 - Exercise 1
Car Retail Price Prediction
STEP 2: Data Exploration
*****************************************/

LIBNAME CS12E01 '/folders/myshortcuts/myfolder/SSCode/JigsawCaseStudy12Exercise1_LinearModel/Datasets';



/** remove missing values data if any **/
DATA CS12E01.CARS_RETAIL_PRICE_REMOVE_MISSING;
	SET CS12E01.CARS_RETAIL_PRICE;
	IF 
		Price ^= . AND
		Mileage ^= . AND
		Make ^= "" AND 
		Model ^= "" AND
		Trim ^= "" AND
		Type ^= "" AND
		Cylinder ^= . AND
		Liter ^= . AND
		Doors ^= . AND
		Cruise ^= . AND
		Sound ^= . AND
		Leather ^= . ;
RUN;

/** to analyse the input **/
PROC UNIVARIATE
	DATA=CS12E01.CARS_RETAIL_PRICE_REMOVE_MISSING;
	HISTOGRAM;
RUN;

/***********************************************************/
/** investigating outliers **
***********************************************************/


/** Investigating Price */
PROC PRINT
	DATA=CS12E01.CARS_RETAIL_PRICE_REMOVE_MISSING;
	WHERE Price >50000;
	TITLE1 "Analyzing Car Prices over 50,000";
	TITLE2 "They are all Cadillac - price is presumably because of it's luxury status";
RUN;


/** Investigating Mileage **/
PROC PRINT
	DATA=CS12E01.CARS_RETAIL_PRICE_REMOVE_MISSING;
	WHERE Mileage > 50000;
	TITLE1 "Analyizing Car with Mileage over 50000";
	TITLE2 "Saab";
RUN;


/** Investigating Liter **/
PROC PRINT
	DATA=CS12E01.CARS_RETAIL_PRICE_REMOVE_MISSING;
	WHERE Liter > 5;
	TITLE1 "Analyzing cars with over 5 Liter engines";
RUN;

/** using PROC Freq to understand the data **/
PROC FREQ
	DATA=CS12E01.CARS_RETAIL_PRICE_REMOVE_MISSING;
	TABLE
		Make
		Model
		Trim
		Type
		Cylinder
		Liter
		Doors
		Cruise
		Sound
		Leather;
	TITLE1 "PROC FREQ on DATA";
RUN;


/** using PROC Freq to understand the Make and Model Interaction **/
PROC FREQ 
	DATA=CS12E01.CARS_RETAIL_PRICE_REMOVE_MISSING;
	TABLES
		Make * Model /NOCOL NOCUM;
	TITLE1 "PROC FREQ on Make*Model";
RUN;


/** PROC FREQ on Model * Trim Relationship **/
PROC FREQ 
	DATA=CS12E01.CARS_RETAIL_PRICE_REMOVE_MISSING;
	TABLES
		Model * Trim /NOCOL NOCUM;
	TITLE1 "PROC FREQ on Model * Trim Relationship";
RUN;


/** "PROC FREQ on Trim * Type Relationship" **/
PROC FREQ 
	DATA=CS12E01.CARS_RETAIL_PRICE_REMOVE_MISSING;
	TABLES
		Trim * Type /NOCOL NOCUM;
	TITLE1 "PROC FREQ on Trim * Type Relationship";
RUN;

/** PROC FREQ on Model * Type Relationship **/
PROC FREQ 
	DATA=CS12E01.CARS_RETAIL_PRICE_REMOVE_MISSING;
	TABLES
		Model * Type  /NOCOL NOCUM;
	TITLE1 "PROC FREQ on Model * Type Relationship";
RUN;

/** PROC FREQ on Cylinder * Type Relationship **/
PROC FREQ 
	DATA=CS12E01.CARS_RETAIL_PRICE_REMOVE_MISSING;
	TABLES
		Cylinder * Type  /NOCOL NOCUM;
	TITLE1 "PROC FREQ on Cylinder * Type Relationship";
RUN;


/** PROC FREQ on Liter * Cylinder Relationship **/
PROC FREQ 
	DATA=CS12E01.CARS_RETAIL_PRICE_REMOVE_MISSING;
	TABLES
		Liter * Cylinder /NOCOL NOCUM;
	TITLE1 "PROC FREQ on Liter * Cylinder Relationship";
RUN;


/** PROC FREQ on Model * Type * Cruise Relationship **/
PROC FREQ 
	DATA=CS12E01.CARS_RETAIL_PRICE_REMOVE_MISSING;
	TABLES
		Model * Type * Cruise /NOCOL NOCUM;
	TITLE1 "PROC FREQ on Model * Type * Cruise Relationship";
RUN;


/** PROC FREQ on Doors * Type Relationship **/
PROC FREQ 
	DATA=CS12E01.CARS_RETAIL_PRICE_REMOVE_MISSING;
	TABLES
		Doors * Type  /NOCOL NOCUM;
	TITLE1 "PROC FREQ on Doors * Type Relationship";
	TITLE2 "There seems to be no question that 2 Door Cars are Coupe and Conve";
	TITLE3 "4-door cars are Hatch Wagon and Sedan";
	TITLE4 "So we can remove Doors from the prediction Model since it will contribute to multicolinearlity";
RUN;

/** using PROC MEANS to understand the Data **/
PROC MEANS
	DATA=CS12E01.CARS_RETAIL_PRICE_REMOVE_MISSING;
	TITLE1 "PROC MEANS ON DATA";
RUN;

