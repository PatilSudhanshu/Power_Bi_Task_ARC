create table all_students(
	student_id int,
	student_name varchar(30),	
	Address varchar(100),	
	age int,
	gender varchar(20),
	ethnicity varchar(25),
	parental_education varchar(20),
	study_time_weekly int,
	absences int,
	tutoring char(3),
	parental_support varchar(15),
	extracurricular char(3),
	sports char(3),
	music char(3),
	volunteering char(3),
	GPA double precision,
	grade_class char(1)
);

copy all_students from 'D:\Sudhanshu\ARC_DA\POWER_BI\NEW_DATASET\All_Student_Data.csv' delimiter ',' csv header;

select * from all_students;

