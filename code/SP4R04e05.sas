/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/
/*SP4R04e05*/
/* 1. Plotting Simple Linear Regression Data */
/* a.Create dataset using double do loop */

data sp4r.e405;
	call streaminit(123);

	do group=1 to 2;
		do x=1 to 20;
			exp=rand('exponential');
			binom=rand('binomial', 0.5, 5);
			output;
		end;
	end;
run;

/* b.Use the BUBBLE statement to create a bubble plot  */
proc sgplot data=sp4r.e405;
	bubble x=x y=exp size=binom / group=group;
	title "My Bubble Plot";
	xaxis label = "X Vlaues";
	yaxis label= "Y Vlaues";
run;