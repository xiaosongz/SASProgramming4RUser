/*--------------------------------------------------*/
/* SAS Programming for R Users - code for exercises */
/* Copyright 2016 SAS Institute Inc.                */
/*--------------------------------------------------*/

/*SP4R03d03*/

libname sp4r "&path";

proc fcmp outlib=sp4r.functions.newfunctions;
	function ReversName(Name $) $;
	length newname $ 40;
	newname = catx(' ', scan(name,2,','),',',scan(name,1,','));
	return(newname);
	endsub;
quit;