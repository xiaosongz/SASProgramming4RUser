/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/

/*SP4R04e01*/

/*Part A*/

data sp4r.e01a;
	call streaminit(1024);
	do q = 1 to 10 by 1;
		pdf = pdf('Binomial',q,0.8,10);
		cdf = cdf('Binomial',q,0.8,10);
		Quantile = quantile('Binomial',cdf,0.8,10);
		output;
	end;
run;

proc print data = sp4r.e01a;
run;