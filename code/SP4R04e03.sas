/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/
/*SP4R04e03*/

data sp4r.e403(drop = i);
	call streaminit(123);
	do i=1 to 1000;
		chi = rand('Chisquare',20);
	output;
	end;
run;

proc sgplot;
	histogram chi / binwidth=1 scale=count;
	density chi / type = kernel;
	density chi / type = normal;
	title "My Random Chi-Square Distribution";
	xaxis label= 'Random Chi-Square Deviates'min=5 max = 40;
	title;
run;
	