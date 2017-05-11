/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/

/*SP4R03e04*/

libname sp4r "&path";

*1. Creating a List of Unique Values;

/* a.Use PROC SQL to create three new data tables. */

proc sql;
 	create table Make as
 		select unique Make as Make
 		from sp4r.cars;
quit;

proc sql;
 	create table Type as
 		select unique Type as Type
 		from sp4r.cars;
quit;

proc sql;
 	create table Origin as
 		select unique Origin as Origin
 		from sp4r.cars;
quit;


/* proc sql; */
/* create table make as select unique make from sp4r.cars; */
/* create table type as select unique type from sp4r.cars; */
/* create table origin as select unique origin from sp4r.cars; quit; */

data sp4r.mylist;
	merge make type origin;
run;


*Print mylist to ensure that the data table is created correctly;

proc print data=sp4r.mylist;

run;