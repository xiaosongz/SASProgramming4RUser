/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/

/*SP4R05e02*/

/*Part A*/
proc means data = sp4r.ameshousing;
var SalePrice;
output out= sp4r.stats median = sp_med;

run;
/*Part B*/
proc sql;

select sp_med into: sp_med from stats;

run;


/*Part C*/
data sp4r.ameshousing;
	set sp4r.ameshousing;
		if saleprice > &sp_med then sp_bin = 1;
		else sp_bin = 0;
run; 


proc freq data = sp4r.ameshousing;
	table sp_bin;

run;
