/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/

/*SP4R05d01*/

/* Question 5.1 */
proc freq data=sp4r.cars;
   tables origin*type / chisq;
run;


/*Part A*/
proc contents data=sp4r.ameshousing varnum;
run;

/*Part B*/
proc univariate data=sp4r.ameshousing;
   var saleprice;
   histogram saleprice / normal kernel;
   inset n mean std / position=ne;
   qqplot saleprice / normal(mu=est sigma=est);
run;
