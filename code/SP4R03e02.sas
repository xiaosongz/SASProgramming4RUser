/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/

/*SP4R03e02*/


libname sp4r "&path";

/*  */
/* data sp4r.cars; */
/* 	set sp4r.cars; */
/* 	drop mpg_quality; */
/* run; */

* 1. Create a new variable in the Cars data set called mpg_quality, 
which is a character variable. 
remember to set length for char var;
data sp4r.cars;
	set sp4r.cars;
	length mpg_quality $8;
	if mpg_average <20 then mpg_quality = 'Low';
	else if mpg_average <30 then mpg_quality = 'Medium';
	else mpg_quality = 'High';
run;

* Print observations 65 through 70 for 
the variables mpg_average and mpg_quality ; 

proc print data=sp4r.cars(firstobs=65 obs= 70);
	var mpg_average mpg_quality;
run;