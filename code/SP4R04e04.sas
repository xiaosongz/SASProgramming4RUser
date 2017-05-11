/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/
/*SP4R04e04*/
/* 1. Plotting Simple Linear Regression Data */
/* a.Create dataset using do loop */
data sp4r.e404;
	call streaminit(1024);

	do x=1 to 30;
		y=25 + x + rand('Normal', 0, 5);
		output;
	end;
run;

/* b.Create scatter plot using proc sgplot */
proc sgplot ;
	reg x=x y=y / lineattrs=(color=red pattern=dot) legendlabel="Scattered";
	scatter x=x y=y / markerattrs=(color=blue symbol=STARFILLED) 
		legendlabel="Line of Best Fit";
	title "Plotting Simple Linear Regression Data";
	xaxis label="X Values" min=0 max=30;
	yaxis label="Y Values" min=15 max=65;
run;

/* c.Alter the previous plot by changing the SCATTER statement 
to NEEDLE and the REG statement to PBSPLINE. */

proc sgplot ;
	pbspline x=x y=y / lineattrs=(color=red pattern=dot) legendlabel="Scattered";
	needle x=x y=y / markerattrs=(color=blue symbol=STARFILLED) 
		legendlabel="Line of Best Fit";
	title "Plotting Simple Linear Regression Data";
	xaxis label="X Values" min=0 max=30;
	yaxis label="Y Values" min=15 max=65;
run;