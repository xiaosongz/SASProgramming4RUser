/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/

/*SP4R02e01*/

libname sp4r "/folders/myfolders/sp4r";

DATA sp4r.shelter;

input Name $ Age Weight Color $ Cats $ ;

datalines;
Pluto 3 25 Black No
Lizzie 10 43 Tan Yes
Pesci 10 38 Brindle No
;
run;

data sp4r.shelter2;

input Name $ Age Weight Color $ Cats $ @@;
datalines;
Pluto 3 25 Black No Lizzie 10 43 Tan Yes Pesci 10 38 Brindle No
;
run;