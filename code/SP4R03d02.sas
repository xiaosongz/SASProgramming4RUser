/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/

/*SP4R03d01*/

libname sp4r "&path";

*Mean, sum ,.. only apply to column of variables/
data sp4r.cars;
	set sp4r.cars;
	mean_mpg = mean(mpg_highway,mpg_city);
run;