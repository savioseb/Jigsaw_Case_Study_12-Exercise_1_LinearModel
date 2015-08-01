/*********************************
Case Study - Class 12 - Exercise 1
Car Retail Price Prediction
STEP 3: Data Preparation
*****************************************/

LIBNAME CS12E01 '/folders/myshortcuts/myfolder/SSCode/JigsawCaseStudy12Exercise1_LinearModel/Datasets';




/** Creating the Dummy Variables **/
DATA CS12E01.CARS_RETAIL_DUMMY_VARIABLES;
	SET CS12E01.CARS_RETAIL_PRICE_REMOVE_MISSING;
	
	/** Make dummy Variables on Make **
	IF Make = "Buick" THEN Make_Buick = 1;
	IF Make = "Cadil" THEN Make_Cadil = 1;
	IF Make = "Chevr" THEN Make_Chevr = 1;
	IF Make = "Ponti" THEN Make_Ponti = 1;
	IF Make = "SAAB" THEN Make_SAAB = 1;
	IF Make_Buick = . THEN Make_Buick = 0;
	IF Make_Cadil = . THEN Make_Cadil = 0;
	IF Make_Chevr = . THEN Make_Chevr = 0;
	IF Make_Ponti = . THEN Make_Ponti = 0;
	IF Make_SAAB = . THEN Make_SAAB = 0;
	*/

	
	
	
	/** Making dummy Variables for Model **/
	/** Buick's Models: Lacrosse, Lesabre, Park Ave & Century */
	IF Model = "Lacrosse" THEN Model_Buick_Lacrosse = 1;
	IF Model = "Lesabre" THEN Model_Buick_Lesabre = 1;
	IF Model = "Park Ave" THEN Model_Buick_Park_Ave = 1;
	IF Model = "Century" THEN Model_Buick_Century = 1;
	/** Cadilliac Models: CST-V, CTS, Deville, STS-V6, STS-V8, XLR-V8 **/
	IF Model = "CST-V" THEN Model_Cadil_CST_V = 1;
	IF Model = "CTS" THEN Model_Cadil_CTS = 1;
	IF Model = "Deville" THEN Model_Cadil_Deville = 1;
	IF Model = "STS-V6" THEN Model_Cadil_STS_V6 = 1;
	IF Model = "STS-V8" THEN Model_Cadil_STS_V8 = 1;
	IF Model = "XLR-V8" THEN Model_Cadil_XLR_V8 = 1;
	/** Cherv Models AVEO, Cavalier, Classic, Cobalt, Corvette, Impala, Malibu, Monte Ca */
	IF Model = "AVEO" THEN Model_Chevr_AVEO = 1;
	IF Model = "Cavalier" THEN Model_Chevr_Cavalier = 1;
	IF Model = "Classic" THEN Model_Chevr_Classic = 1;
	IF Model = "Cobalt" THEN Model_Chevr_Cobalt = 1;
	IF Model = "Corvette" THEN Model_Chevr_Corvette = 1;
	IF Model = "Impala" THEN Model_Chevr_Impala = 1;
	IF Model = "Malibu" THEN Model_Chevr_Malibu = 1;
	IF Model = "Monte Ca" THEN Model_Chevr_Monte_Ca = 1;
	/** Ponti Models: Bonnevil,  G6, GTO, Grand Am, Grand Pr, Sunfire, Vibe */
	IF Model = "Bonnevil" THEN Model_Ponti_Bonnevil = 1;
	IF Model = "G6" THEN Model_Ponti_G6 = 1;
	IF Model = "GTO" THEN Model_Ponti_GTO = 1;
	IF Model = "Grand Am" THEN Model_Ponti_Grand_Am = 1;
	IF Model = "Grand Pr" THEN Model_Ponti_Grand_Pr = 1;
	IF Model = "Sunfire" THEN Model_Ponti_Sunfire = 1;
	IF Model = "Vibe" THEN Model_Ponti_Vibe = 1;
	/** SAAB Models: 9-2X AWD , 9_3, 9_3 HO, 9_5, 9_5 HO **/
	IF Model = "9-2X AWD" THEN Model_SAAB_9_2X_AWD = 1;
	IF Model = "9_3" THEN Model_SAAB_9_3 = 1;
	IF Model = "9_3 HO" THEN Model_SAAB_9_3_HO = 1;
	IF Model = "9_5" THEN Model_SAAB_9_5 = 1;
	IF Model = "9_5 HO" THEN Model_SAAB_9_5_HO = 1;
	/** Saturn Models: Ion , L Series (dummy not created) **/
	IF Model = "Ion" THEN Model_Saturn_Ion = 1;
	
	/* If missing value in dummy variable , it is set to 0 */
	IF Model_Buick_Lacrosse = . THEN Model_Buick_Lacrosse = 0;
	IF Model_Buick_Lesabre = . THEN Model_Buick_Lesabre = 0;
	IF Model_Buick_Park_Ave = . THEN Model_Buick_Park_Ave = 0;
	IF Model_Buick_Century = . THEN Model_Buick_Century = 0;
	IF Model_Cadil_CST_V = . THEN Model_Cadil_CST_V = 0;
	IF Model_Cadil_CTS = . THEN Model_Cadil_CTS = 0;
	IF Model_Cadil_Deville = . THEN Model_Cadil_Deville = 0;
	IF Model_Cadil_STS_V6 = . THEN Model_Cadil_STS_V6 = 0;
	IF Model_Cadil_STS_V8 = . THEN Model_Cadil_STS_V8 = 0;
	IF Model_Cadil_XLR_V8 = . THEN Model_Cadil_XLR_V8 = 0;
	IF Model_Chevr_AVEO = . THEN Model_Chevr_AVEO = 0;
	IF Model_Chevr_Cavalier = . THEN Model_Chevr_Cavalier = 0;
	IF Model_Chevr_Classic = . THEN Model_Chevr_Classic = 0;
	IF Model_Chevr_Cobalt = . THEN Model_Chevr_Cobalt = 0;
	IF Model_Chevr_Corvette = . THEN Model_Chevr_Corvette = 0;
	IF Model_Chevr_Impala = . THEN Model_Chevr_Impala = 0;
	IF Model_Chevr_Malibu = . THEN Model_Chevr_Malibu = 0;
	IF Model_Chevr_Monte_Ca = . THEN Model_Chevr_Monte_Ca = 0;
	IF Model_Ponti_Bonnevil = . THEN Model_Ponti_Bonnevil = 0;
	IF Model_Ponti_G6 = . THEN Model_Ponti_G6 = 0;
	IF Model_Ponti_GTO = . THEN Model_Ponti_GTO = 0;
	IF Model_Ponti_Grand_Am = . THEN Model_Ponti_Grand_Am = 0;
	IF Model_Ponti_Grand_Pr = . THEN Model_Ponti_Grand_Pr = 0;
	IF Model_Ponti_Sunfire = . THEN Model_Ponti_Sunfire = 0;
	IF Model_Ponti_Vibe = . THEN Model_Ponti_Vibe = 0;
	IF Model_SAAB_9_2X_AWD = . THEN Model_SAAB_9_2X_AWD = 0;
	IF Model_SAAB_9_3 = . THEN Model_SAAB_9_3 = 0;
	IF Model_SAAB_9_3_HO = . THEN Model_SAAB_9_3_HO = 0;
	IF Model_SAAB_9_5 = . THEN Model_SAAB_9_5 = 0;
	IF Model_SAAB_9_5_HO = . THEN Model_SAAB_9_5_HO = 0;
	IF Model_Saturn_Ion = . THEN Model_Saturn_Ion = 0;
	
	
	/** Type dummy variables created  */
	IF Type = "Conve" THEN Type_Conve = 1;
	IF Type = "Coupe" THEN Type_Coupe = 1;
	IF Type = "Hatch" THEN Type_Hatch = 1;
	IF Type = "Sedan" THEN Type_Sedan = 1;
	/* If missing value in dummy variable , it is set to 0 */
	IF Type_Conve = . THEN Type_Conve = 0;
	IF Type_Coupe = . THEN Type_Coupe = 0;
	IF Type_Hatch = . THEN Type_Hatch = 0;
	IF Type_Sedan = . THEN Type_Sedan = 0;
RUN;

