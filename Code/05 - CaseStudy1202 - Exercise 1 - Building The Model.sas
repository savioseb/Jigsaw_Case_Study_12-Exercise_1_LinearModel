/*********************************
Case Study - Class 12 - Exercise 1
Car Retail Price Prediction
STEP 4: Building the Model
*****************************************/

LIBNAME CS12E01 '/folders/myshortcuts/myfolder/SSCode/JigsawCaseStudy12Exercise1_LinearModel/Datasets';



/** Creating the Model **/
PROC REG
	DATA=CS12E01.DEVELOPMENT_SAMPLE
	OUTEST=CS12E01.CAR_PRICE_LINEAR_MODEL;
	CarPrice: MODEL 
		Price = 
			Mileage
			Liter
			Sound
			Leather
			/*
			Make_Buick
			Make_Cadil
			Make_Chevr
			Make_Ponti
			Make_SAAB
			*/
			
			Model_Buick_Lacrosse
			Model_Buick_Lesabre
			Model_Buick_Park_Ave
			Model_Buick_Century
			Model_Cadil_CST_V
			Model_Cadil_CTS
			Model_Cadil_Deville
			Model_Cadil_STS_V6
			Model_Cadil_STS_V8
			Model_Cadil_XLR_V8
			Model_Chevr_AVEO
			Model_Chevr_Cavalier
			Model_Chevr_Classic
			Model_Chevr_Cobalt
			Model_Chevr_Corvette
			Model_Chevr_Impala
			Model_Chevr_Malibu
			Model_Chevr_Monte_Ca
			Model_Ponti_Bonnevil
			Model_Ponti_G6
			Model_Ponti_GTO
			Model_Ponti_Grand_Am
			Model_Ponti_Grand_Pr
			Model_Ponti_Sunfire
			Model_Ponti_Vibe
			Model_SAAB_9_2X_AWD
			Model_SAAB_9_3
			Model_SAAB_9_3_HO
			Model_SAAB_9_5
			Model_SAAB_9_5_HO
			Model_Saturn_Ion
			
			Type_Conve
			Type_Coupe
			Type_Hatch
			Type_Sedan;
			
	OUTPUT 
		OUT = CS12E01.OUTPUTDATASET 
		R = RESIDS 
		P = PREDICTED; 
RUN;

