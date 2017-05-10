/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/

/*SP4R03d01*/

libname sp4r "&path";

*copy cars dataset from sashelp lib to sp4r lib;
data sp4r.cars;
	set sashelp.cars;
run;


*Creating new variable with if else statement on existing varibles;
data sp4r.cars;
	set sp4r.cars;
	if mpg_highway < 20 then bonus = 0;
	else if mpg_highway <30 then bonus = 1000;
	else bonus = 2000;
run;

*Conditional Creating Variables with a Do Group;

data sp4r.cars;
	set sp4r.cars;
	length frequency $12;
	if mpg_highway < 20 then do;
		bonus = 0;
		frequency = 'No Payment';
	end;
	else if mpg_highway <30 then do;
		bonus = 1000;
		frequency = 'One Payment';
	end;
	else do;
		bonus = 2000;
		frequency = 'Two Payments';
	end;
run;