/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/

/*SP4R03e03*/
libname sp4r "&path";

*Create function using FCMP procedure;


*Create a function called tier with a single numeric argument, 
which returns a character value. ;

proc fcmp outlib=sp4r.functions.newfunctions;
	function tier(mpg_average) $;
	length mpg_quality2 $ 8;
	if mpg_average < 20 then mpg_quality2 = 'Low';
	else if mpg_average <30 then mpg_quality2 = 'Medium';
	else mpg_quality2 = 'High';
	return(mpg_quality2);
	endsub;
quit;
	
options cmplib=sp4r.functions;

data sp4r.cars;
	set sp4r.cars;
	mpg_quality2 = tier(mpg_average);
run;

proc print data=sp4r.cars(firstobs=65 obs=70);
	var mpg_average mpg_quality mpg_quality2;
run;