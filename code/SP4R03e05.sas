/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/
/*SP4R03e05*/
libname sp4r "&path";

/* a.Create a new data table called sports,  */
/* 	which has only three columns from the Cars  */
/* 	data set: make, type, and msrp. In addition,  */
/* 	keep only those observations where type is equal  */
/* 	to sports and msrp is greater than $100,000. */

proc sql;
	create table sp4r.sports0 as
	select make, type, msrp
	from sp4r.cars
	where type = "Sports" and msrp GT 100000
	;
quit;

data sp4r.sports1;
	set sp4r.cars(keep= make type msrp);
	where type = "Sports" and msrp GT 100000;
run;

/* b.Create another data table called suv,  */
/* 	which has the same three columns. */
/* 	type is equal to suv and msrp is greater  */
/* 	than $60,000. */

proc sql;
	create table sp4r.suv0 as
	select make,type,msrp
	from sp4r.cars
	where type = "SUV" and msrp > 60000
	;
quit;

data sp4r.suv1;
	set sp4r.cars(keep= make type msrp);
	where type = "SUV" and msrp > 60000;
run;
/*c. Create a new data table called expensive  */
/*  	by row-binding sports and suv.  	*/
/* 		Then print expensive to see the results. */


data sp4r.expensive0;
	set sp4r.sports0 sp4r.suv0;
run;

data sp4r.expensive1;
	set sp4r.sports1 sp4r.suv1;
run;





