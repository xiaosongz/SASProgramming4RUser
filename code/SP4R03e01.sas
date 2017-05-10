/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                  */
/*--------------------------------------------------*/
/*SP4R03e01*/
*Use the Cars data set in the SP4R library to complete this exercise. 
1. Creating a New Data Set Variable;
*a. Create a new variable called mpg_average in the Cars data set. 
This new variable should simply be the average gas mileage 
between mpg_city and mpg_highway.;

libname sp4r "&path";

data sp4r.cars;
	set sp4r.cars;
	mpg_average = (mpg_city + mpg_highway)/2;
run;
*Print the first 5 obs of mpg_city mpg_highway mpg_average;
proc print data = sp4r.cars(obs =5);
	var mpg_city mpg_highway mpg_average;
run;