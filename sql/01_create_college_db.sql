Create Database College;
GO

Use College;
GO

Create Table professor(
prof_num int not null Primary Key,
dept_code int not null,
prof_speacialty varchar(50),
prof_rank int,
prof_fname varchar(25) not null,
prof_lname varchar(25) not null,
prof_initial Varchar(5),
prof_email Varchar(50),
CONSTRAINT check_email
Check(prof_email like '%@%.%')
);


Create Table school(
school_code Varchar(20) Primary Key Not Null,
school_name Varchar(20) Not Null,
prof_num int not null ,
CONSTRAINT fk_school_prof
FOREIGN Key (prof_num)
REFERENCES professor(prof_num)
);


Create Table department(
dept_code Varchar(20) Primary Key Not Null,
dept_name Varchar(20) Not Null,
school_code Varchar(20) Not Null,
prof_num int not null,
CONSTRAINT fk_dept_prof
FOREIGN Key (prof_num)
REFERENCES professor(prof_num),
CONSTRAINT fk_school_dept
FOREIGN Key (school_code)
REFERENCES school(school_code)
);


Create Table semester(
semester_code Varchar(20) Primary Key Not Null,
semester_year Varchar(4) Not Null,
semester_term Varchar(50) Not Null,
semester_start_date date not null,
semester_end_date date not null
);


Create Table course(
course_code Varchar(20) Primary Key Not Null,
dept_code Varchar(20) Not Null,
crs_title Varchar(50) Not Null,
crs_description text,
crs_credit int Not Null,
CONSTRAINT fk_dept_crs
FOREIGN Key (dept_code)
REFERENCES department(dept_code)
);


Create Table student(
stu_code Varchar(20) Primary Key Not Null,
dept_code Varchar(20) Not Null,
stu_fname varchar(25) not null,
stu_lname varchar(25) not null,
prof_initial Varchar(5),
prof_email Varchar(50),
prof_num int not null ,
CONSTRAINT fk_dept_stu
FOREIGN Key (dept_code)
REFERENCES department(dept_code),
CONSTRAINT checkk_email
Check(prof_email like '%@%.%')
);


Create Table building(
bldg_code Varchar(20) Primary Key Not Null,
bldg_name Varchar(20) Not Null,
bldg_location Varchar(50) not null
);


Create Table room(
room_code Varchar(20) Primary Key Not Null,
room_type Varchar(20) Not Null,
bldg_code Varchar(20) not null ,
CONSTRAINT fk_room_bldg
FOREIGN Key (bldg_code)
REFERENCES building(bldg_code)
);


Create Table class(
class_code Varchar(20) Primary Key Not Null,
class_section Varchar(10) Not Null,
class_time time Not Null,
crs_code  Varchar(20) Not Null,
prof_num  int Not Null,
room_code  Varchar(20) Not Null,
semester_code  Varchar(20) Not Null,
CONSTRAINT fk_class_prof
FOREIGN Key (prof_num)
REFERENCES professor(prof_num),
CONSTRAINT fk_class_crs
FOREIGN Key (crs_code)
REFERENCES course(course_code),
CONSTRAINT fk_room_class
FOREIGN Key (room_code)
REFERENCES room(room_code),
CONSTRAINT fk_semester_class
FOREIGN Key (semester_code)
REFERENCES semester(semester_code)
);


create table enroll(
class_code Varchar(20) Not Null,
stu_num Varchar(20) Not Null,
enroll_date date Not Null,
enroll_grade Varchar(20) Not Null,
CONSTRAINT pk_class_stu
Primary Key (class_code, stu_num)
);


ALTER TABLE enroll
ADD CONSTRAINT fk_enroll_class
FOREIGN KEY (class_code)
REFERENCES class(class_code);

ALTER TABLE enroll
ADD CONSTRAINT fk_enroll_student
FOREIGN KEY (stu_num)
REFERENCES student(stu_code);
