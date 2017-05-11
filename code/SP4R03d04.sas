/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/

/*SP4R03d04*/
libname sp4r "&path";
* subset without overwrite original dataset, 
	give a new name in the data step;

*select columns make msrp invoice;
data sp4r.cars2(keep=make msrp invoice);
	set sp4r.cars;
run;

*drop model drivetrain columns while keep the rest ; 
data sp4r.cars2(drop=model drivetrain);
	set sp4r.cars;
run;


*subset by row number 25-50;
data sp4r.cars2;
	set sp4r.cars(firstobs=25 obs=50);
run;


*Use where to subset obs conditionally;
data sp4r.cars2;
	set sp4r.cars;
	where mpg_city>35;
run;

* CREATE TABLE statement;

proc sql;
	create table sp4r.origin as
		select unique origin,mean(mpg_city) as mean_mpg_city 
		from sp4r.cars
		group by origin;
quit;