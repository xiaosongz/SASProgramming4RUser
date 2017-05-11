/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/
/*SP4R04e02*/
data sp4r.random;
	call streaminit(123);

	do i=1 to 10;
		rt=rand('T', 5);
		rf=rand('F', 3, 4);
		ru=int(rand('Uniform')*10);
		output;
	end;
run;

proc print data=sp4r.random;
run;

data sp4r.random;
	call streaminit(123);

	do i=1 to 10;
		rt=rand('T', 5);
		rf=rand('F', 3, 4);
		ru=int(rand('Uniform')*10);
		output;
	end;
run;

data sp4r.random (drop=j);
	call streaminit(123);

	do class=1 to 2;

		do j=1 to 5;
			sequence + 1;
			rt=rand('T', 5);
			rf=rand('F', 3, 4);
			ru=int(rand('Uniform')*10);
			output;
		end;
	end;
run;

proc print data=sp4r.random;
run;

proc print data=sp4r.random;
run;

data test;
	do i=1 to 2;
		output;
	end;
run;

proc print data=test;
run;

data test;
	set test;

	do j=1 to 5;
		output;
	end;
run;

proc print data=test;
run;