/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*Xiaosong Zhang------------------------------------*/
/*SP4R02e05*/
libname sp4r "&path";
* a.Use PROC FORMAT to create a format for the grade variable.;

proc format ;
	value gradeformat 0-59='F' 60-69='D' 70-79='C' 80-89='B' 90-100='A';
run;

*b
.
Use the DATA step above to read in the Class data set
. 
In the DATAstep, label the variable bd as “Birthday” a
nd 
apply the GradeFormat created in part a. In addit
on,
use the SAS format WORDDATE for the bd variable.;

data sp4r.class;
	input student $ country $ grade bd @@;
	format grade gradeformat. bd WORDDATE.;
	*Label will not be show after data importation, 

			will be show later when print with option label exist;
	label bd="Birthday";
	datalines;
   John Spain 95 12000 Mary Spain 82 12121 Alison France 98 12026 
   Nadine Spain 77 12222 Josh Italy 61 12095 James France 45 12301 
   William France 92 12284 Susan Italy 95 12079 
   Charlie France 88 12234 Alice Italy 89 12014 Robert Italy 92 12025 
   Emily Spain 87 12148 Arthur Italy 99 12052 Nancy France 70 12238 
   Kristin France 65 12084 Sara Italy 49 12322 Ashley Spain 96 12299 
   Aaron France 95 12052 Sean France 87 12254 Phil Italy 86 12036
   ;
run;

*Print the Class data table.
(Remember to use the LABEL option in the PRINT statement.);
proc print data=sp4r.class label;
run;

*d.Use PROC SQL to print the unique levels of the country variable.;
proc sql ;
	select distinct country 
	from sp4r.class;
quit;
	
	
*e Conditionally print the variable student, country, 
and grade for people with a grade above 79 and from France only.;

*e.1 PROC SQL approach;
proc sql;
	select student, country, grade
	from sp4r.class
	where grade GE 79 and country = "France";
quit;

*e.2 PROC PRINT step approach;

proc print data = sp4r.class;
	var student country grade;
	where grade >= 79 and country ="France";
run;
