/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/

/*SP4R04e07*/

/*Part A*/
data sp4r.e407;
	call streaminit(123);
	do i=1 to 300;
		do year=1 to 2;
			x = rand('normal',0,1);
			if year =1 then y = x+ rand('normal',0,1);
			else y = 5*x+ rand('normal',0,1);
		output;
		end;
	end;
run;
			
			
/* Part B */
proc sgpanel data=sp4r.e407;
	panelby year;
	reg x =x y=y;
run;