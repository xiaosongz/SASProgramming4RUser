/*--------------------------------------------------*/
/* SAS Programmng for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.    Xiaosong    */
/*--------------------------------------------------*/

/*SP4R02e03*/

data sp4r.state_pop;
* Can use <'09'x> to replace <Tab>, better readability ;
infile "&path/data/state_pop.txt" dlm= "	";
input State $ Population;
run;