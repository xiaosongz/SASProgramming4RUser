/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/
/*SP4R04e06*/
/*Part A*/

data sp4r.e506;
	call streaminit(123);
	do i=1 to 300;
		X=rand('Normal', 0, 1);
		Y1=x + rand('Normal', 0, 1);
		Y2=x*5 + rand('Normal', 0, 1);
		output;
	end;
run;

/* Part B */
proc sgscatter data=sp4r.e506;
	matrix X Y1 Y2/ diagonal=(histogram kernel);
run;

/* Part C */
proc sgscatter data=sp4r.e506;
	plot (y1 y2)*x/reg;	
run;

/* Part D */

proc sgscatter data=sp4r.e506;
	compare y=(y1 y2) x = x/reg;
run;