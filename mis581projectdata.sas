PROC IMPORT OUT=jobs
		datafile="/home/u37600938/MIS_581_Capstone_Project/Job_Apps.csv"
   		DBMS=CSV REPLACE;
   		GETNAMES=YES;
   		DATAROW=2;
TITLE 'Total City of Los Angeles Municipal Job Applicants by Eric Stiever';
RUN;

PROC MEANS DATA=jobs mean std min max median 
		;
	VAR Apps_Rec Female Male Unknown_Gender;
RUN;
QUIT;

PROC IMPORT OUT=chiefs
		datafile="/home/u37600938/MIS_581_Capstone_Project/Job_Chief.csv"
   		DBMS=CSV REPLACE;
   		GETNAMES=YES;
   		DATAROW=2;
TITLE 'Job Applicants for "Chief" job titles by Eric Stiever';
RUN;

PROC IMPORT OUT=director
		datafile="/home/u37600938/MIS_581_Capstone_Project/Job_Director.csv"
   		DBMS=CSV REPLACE;
   		GETNAMES=YES;
   		DATAROW=2;
TITLE 'Job Applicants for "Chief" job titles by Eric Stiever';
RUN;
 
PROC IMPORT OUT=manager
		datafile="/home/u37600938/MIS_581_Capstone_Project/Job_Manager.csv"
   		DBMS=CSV REPLACE;
   		GETNAMES=YES;
   		DATAROW=2;
TITLE 'Job Applicants for "Chief" job titles by Eric Stiever';
RUN;

PROC IMPORT OUT=principal
		datafile="/home/u37600938/MIS_581_Capstone_Project/Job_Principal.csv"
   		DBMS=CSV REPLACE;
   		GETNAMES=YES;
   		DATAROW=2;
TITLE 'Job Applicants for "Chief" job titles by Eric Stiever';
RUN;

PROC IMPORT OUT=supervisor
		datafile="/home/u37600938/MIS_581_Capstone_Project/Job_Supervisor.csv"
   		DBMS=CSV REPLACE;
   		GETNAMES=YES;
   		DATAROW=2;
TITLE 'Job Applicants for "Chief" job titles by Eric Stiever';
RUN;

ods noproctitle;
ods graphics / imagemap=on;

proc corr data=WORK.JOBS pearson nosimple noprob plots=none;
	var Apps_Rec;
	with Female Male Unknown_Gender;
TITLE 'Correlation for All job titles by Gender by Eric Stiever';
run;

proc corr data=WORK.SUPERVISOR pearson nosimple noprob plots=none;
	var Apps_Rec;
	with Female Male Unknown_Gender;

TITLE 'Correlation for "Supervisor" job titles by Gender by Eric Stiever';
run;

proc corr data=WORK.PRINCIPAL pearson nosimple noprob plots=none;
	var Apps_Rec;
	with Female Male Unknown_Gender;
TITLE 'Correlation for "Principal" job titles by Gender by Eric Stiever';	
run;

proc corr data=WORK.MANAGER pearson nosimple noprob plots=none;
	var Apps_Rec;
	with Female Male Unknown_Gender;
TITLE 'Correlation for "Manager" job titles by Gender by Eric Stiever';
run;

proc corr data=WORK.DIRECTOR pearson nosimple noprob plots=none;
	var Apps_Rec;
	with Female Male Unknown_Gender;
TITLE 'Correlation for "Director" job titles by Gender by Eric Stiever';
run;

proc corr data=WORK.CHIEFS pearson nosimple noprob plots=none;
	var Apps_Rec;
	with Female Male Unknown_Gender;
TITLE 'Correlation for "Chiefs" job titles by Gender by Eric Stiever';
run;