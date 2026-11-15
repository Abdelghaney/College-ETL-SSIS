USE College;
GO

INSERT INTO professor
(prof_num, dept_code, prof_speacialty, prof_rank, prof_fname, prof_lname, prof_initial, prof_email)
VALUES
(1,101,'Database Systems',1,'Ahmed','Mohamed','A','ahmed@college.edu'),
(2,102,'Artificial Intelligence',2,'Sara','Ali','S','sara@college.edu'),
(3,103,'Software Engineering',1,'Omar','Hassan','O','omar@college.edu'),
(4,104,'Information Systems',3,'Mona','Ibrahim','M','mona@college.edu'),
(5,105,'Data Engineering',2,'Khaled','Mahmoud','K','khaled@college.edu'),
(6,106,'Cyber Security',1,'Nour','Samir','N','nour@college.edu'),
(7,101,'Data Science',2,'Mostafa','Adel','M','mostafa@college.edu'),
(8,102,'Machine Learning',1,'Youssef','Tarek','Y','youssef@college.edu'),
(9,103,'Web Development',3,'Hany','Fathy','H','hany@college.edu'),
(10,104,'Business Intelligence',2,'Mai','Ashraf','M','mai@college.edu'),
(11,105,'Big Data',1,'Amr','Said','A','amr@college.edu'),
(12,106,'Network Security',2,'Heba','Nabil','H','heba@college.edu');

INSERT INTO school
(school_code, school_name, prof_num)
VALUES
('SC01','Computing',1),
('SC02','Engineering',3),
('SC03','Technology',5);

INSERT INTO department
(dept_code, dept_name, school_code, prof_num)
VALUES
('101','Data Science','SC01',1),
('102','AI','SC01',2),
('103','Software Engineering','SC02',3),
('104','Information Systems','SC02',4),
('105','Data Engineering','SC03',5),
('106','Cyber Security','SC03',6);

INSERT INTO semester
(semester_code, semester_year, semester_term, semester_start_date, semester_end_date)
VALUES
('SEM01','2024','Fall','2024-09-15','2025-01-15'),
('SEM02','2025','Spring','2025-02-01','2025-06-15'),
('SEM03','2025','Fall','2025-09-15','2026-01-15'),
('SEM04','2026','Spring','2026-02-01','2026-06-15'),
('SEM05','2026','Summer','2026-07-01','2026-08-30');

INSERT INTO course
(course_code, dept_code, crs_title, crs_description, crs_credit)
VALUES
('DS101','101','Database Systems','Database fundamentals and SQL',3),
('DS102','101','Advanced SQL','Advanced queries and optimization',3),
('DS103','101','Data Mining','Data mining techniques',3),
('AI101','102','Artificial Intelligence','Introduction to AI',3),
('AI102','102','Machine Learning','Machine learning algorithms',4),
('AI103','102','Deep Learning','Neural networks',3),
('SE101','103','Programming Fundamentals','Programming basics',3),
('SE102','103','Software Engineering','Software development lifecycle',3),
('SE103','103','Web Development','Frontend and backend',3),
('IS101','104','Information Systems','Information systems concepts',3),
('IS102','104','Business Intelligence','BI and reporting',3),
('IS103','104','Systems Analysis','Systems analysis and design',3),
('DE101','105','Data Warehousing','Data warehouse concepts',3),
('DE102','105','Big Data','Big data technologies',4),
('DE103','105','ETL Development','ETL and data pipelines',3),
('CY101','106','Network Security','Network security fundamentals',3),
('CY102','106','Cryptography','Cryptography fundamentals',3),
('CY103','106','Ethical Hacking','Penetration testing basics',3);

INSERT INTO student
(stu_code, dept_code, stu_fname, stu_lname, prof_initial, prof_email, prof_num)
VALUES
('ST001','101','Mohamed','Ahmed','A','ahmed@college.edu',1),
('ST002','101','Omar','Khaled','M','mostafa@college.edu',7),
('ST003','101','Ahmed','Samir','A','ahmed@college.edu',1),
('ST004','101','Mariam','Hassan','M','mostafa@college.edu',7),
('ST005','101','Ali','Mahmoud','A','ahmed@college.edu',1),
('ST006','101','Nada','Ibrahim','M','mostafa@college.edu',7),
('ST007','101','Youssef','Adel','A','ahmed@college.edu',1),
('ST008','102','Sara','Mohamed','S','sara@college.edu',2),
('ST009','102','Nour','Ahmed','Y','youssef@college.edu',8),
('ST010','102','Hassan','Ali','S','sara@college.edu',2),
('ST011','102','Salma','Omar','Y','youssef@college.edu',8),
('ST012','102','Khaled','Tarek','S','sara@college.edu',2),
('ST013','102','Farah','Samir','Y','youssef@college.edu',8),
('ST014','102','Mona','Adel','S','sara@college.edu',2),
('ST015','103','Mostafa','Hany','O','omar@college.edu',3),
('ST016','103','Amr','Fathy','H','hany@college.edu',9),
('ST017','103','Yara','Ahmed','O','omar@college.edu',3),
('ST018','103','Adel','Mahmoud','H','hany@college.edu',9),
('ST019','103','Hana','Samir','O','omar@college.edu',3),
('ST020','103','Tamer','Khaled','H','hany@college.edu',9),
('ST021','103','Rana','Ali','O','omar@college.edu',3),
('ST022','104','Mai','Hassan','M','mona@college.edu',4),
('ST023','104','Hany','Mohamed','M','mai@college.edu',10),
('ST024','104','Esraa','Ahmed','M','mona@college.edu',4),
('ST025','104','Fady','Samir','M','mai@college.edu',10),
('ST026','104','Dina','Omar','M','mona@college.edu',4),
('ST027','104','Bassem','Adel','M','mai@college.edu',10),
('ST028','105','Karim','Ali','K','khaled@college.edu',5),
('ST029','105','Menna','Tarek','A','amr@college.edu',11),
('ST030','105','Ayman','Hassan','K','khaled@college.edu',5),
('ST031','105','Ramy','Ahmed','A','amr@college.edu',11),
('ST032','105','Laila','Samir','K','khaled@college.edu',5),
('ST033','105','Ziad','Mahmoud','A','amr@college.edu',11),
('ST034','106','Ibrahim','Mostafa','N','nour@college.edu',6),
('ST035','106','Huda','Mohamed','H','heba@college.edu',12),
('ST036','106','Tarek','Ahmed','N','nour@college.edu',6),
('ST037','106','Aya','Khaled','H','heba@college.edu',12),
('ST038','106','Fares','Samir','N','nour@college.edu',6),
('ST039','106','Reem','Hassan','H','heba@college.edu',12),
('ST040','106','Seif','Adel','N','nour@college.edu',6);

INSERT INTO building
(bldg_code, bldg_name, bldg_location)
VALUES
('B01','Main Building','Campus North'),
('B02','Science Building','Campus South'),
('B03','Technology Building','Campus East'),
('B04','Research Building','Campus West');

INSERT INTO room
(room_code, room_type, bldg_code)
VALUES
('R101','Lecture','B01'),
('R102','Lab','B01'),
('R103','Lecture','B01'),
('R201','Lecture','B02'),
('R202','Lab','B02'),
('R203','Lecture','B02'),
('R301','Lecture','B03'),
('R302','Lab','B03'),
('R303','Lecture','B03'),
('R401','Lecture','B04'),
('R402','Lab','B04'),
('R403','Lecture','B04');

INSERT INTO class
(class_code, class_section, class_time, crs_code, prof_num, room_code, semester_code)
VALUES
('CL001','A','09:00','DS101',1,'R101','SEM01'),
('CL002','B','11:00','DS102',7,'R102','SEM01'),
('CL003','A','13:00','DS103',1,'R103','SEM02'),
('CL004','B','15:00','DS101',7,'R201','SEM03'),
('CL005','A','09:00','AI101',2,'R202','SEM01'),
('CL006','B','11:00','AI102',8,'R203','SEM01'),
('CL007','A','13:00','AI103',2,'R301','SEM02'),
('CL008','B','15:00','AI101',8,'R302','SEM03'),
('CL009','A','09:00','SE101',3,'R303','SEM01'),
('CL010','B','11:00','SE102',9,'R401','SEM01'),
('CL011','A','13:00','SE103',3,'R402','SEM02'),
('CL012','B','15:00','SE101',9,'R403','SEM03'),
('CL013','A','09:00','IS101',4,'R101','SEM01'),
('CL014','B','11:00','IS102',10,'R102','SEM02'),
('CL015','A','13:00','IS103',4,'R201','SEM03'),
('CL016','B','15:00','IS101',10,'R202','SEM04'),
('CL017','A','09:00','DE101',5,'R301','SEM01'),
('CL018','B','11:00','DE102',11,'R302','SEM02'),
('CL019','A','13:00','DE103',5,'R303','SEM03'),
('CL020','B','15:00','DE101',11,'R401','SEM04'),
('CL021','A','09:00','CY101',6,'R402','SEM01'),
('CL022','B','11:00','CY102',12,'R403','SEM02'),
('CL023','A','13:00','CY103',6,'R401','SEM03'),
('CL024','B','15:00','CY101',12,'R402','SEM04');

INSERT INTO enroll
(class_code, stu_num, enroll_date, enroll_grade)
VALUES
('CL001','ST001','2024-09-20','A'),
('CL001','ST002','2024-09-20','B'),
('CL001','ST003','2024-09-21','A'),
('CL001','ST004','2024-09-21','C'),
('CL001','ST005','2024-09-22','B'),
('CL002','ST001','2024-09-22','B'),
('CL002','ST002','2024-09-23','A'),
('CL002','ST006','2024-09-23','C'),
('CL003','ST003','2025-02-03','A'),
('CL003','ST004','2025-02-03','B'),
('CL003','ST005','2025-02-04','C'),
('CL003','ST006','2025-02-04','A'),
('CL004','ST001','2025-09-17','B'),
('CL004','ST002','2025-09-17','A'),
('CL004','ST007','2025-09-18','A'),
('CL005','ST008','2024-09-20','A'),
('CL005','ST009','2024-09-20','B'),
('CL005','ST010','2024-09-21','C'),
('CL005','ST011','2024-09-21','A'),
('CL006','ST008','2024-09-22','B'),
('CL006','ST009','2024-09-22','A'),
('CL006','ST012','2024-09-23','B'),
('CL007','ST010','2025-02-03','A'),
('CL007','ST011','2025-02-03','B'),
('CL007','ST013','2025-02-04','A'),
('CL008','ST012','2025-09-17','C'),
('CL008','ST013','2025-09-17','B'),
('CL008','ST014','2025-09-18','A'),
('CL009','ST015','2024-09-20','A'),
('CL009','ST016','2024-09-20','B'),
('CL009','ST017','2024-09-21','C'),
('CL009','ST018','2024-09-21','A'),
('CL010','ST015','2024-09-22','B'),
('CL010','ST016','2024-09-22','A'),
('CL010','ST019','2024-09-23','B'),
('CL011','ST017','2025-02-03','A'),
('CL011','ST018','2025-02-03','B'),
('CL011','ST020','2025-02-04','C'),
('CL012','ST019','2025-09-17','A'),
('CL012','ST020','2025-09-17','B'),
('CL012','ST021','2025-09-18','A'),
('CL013','ST022','2024-09-20','A'),
('CL013','ST023','2024-09-20','B'),
('CL013','ST024','2024-09-21','C'),
('CL014','ST022','2025-02-03','B'),
('CL014','ST023','2025-02-03','A'),
('CL014','ST025','2025-02-04','B'),
('CL015','ST024','2025-09-17','A'),
('CL015','ST025','2025-09-17','B'),
('CL015','ST026','2025-09-18','C'),
('CL016','ST026','2026-02-03','A'),
('CL016','ST027','2026-02-03','B'),
('CL017','ST028','2024-09-20','A'),
('CL017','ST029','2024-09-20','B'),
('CL017','ST030','2024-09-21','A'),
('CL018','ST028','2025-02-03','B'),
('CL018','ST029','2025-02-03','A'),
('CL018','ST031','2025-02-04','C'),
('CL019','ST030','2025-09-17','A'),
('CL019','ST031','2025-09-17','B'),
('CL019','ST032','2025-09-18','A'),
('CL020','ST032','2026-02-03','B'),
('CL020','ST033','2026-02-03','A'),
('CL021','ST034','2024-09-20','A'),
('CL021','ST035','2024-09-20','B'),
('CL021','ST036','2024-09-21','C'),
('CL022','ST034','2025-02-03','B'),
('CL022','ST035','2025-02-03','A'),
('CL022','ST037','2025-02-04','B'),
('CL023','ST036','2025-09-17','A'),
('CL023','ST037','2025-09-17','B'),
('CL023','ST038','2025-09-18','A'),
('CL024','ST038','2026-02-03','B'),
('CL024','ST039','2026-02-03','A'),
('CL024','ST040','2026-02-04','C');

-- Verify all inserted records
SELECT 'Professor' AS TableName, COUNT(*) AS Total FROM professor
UNION ALL SELECT 'School', COUNT(*) FROM school
UNION ALL SELECT 'Department', COUNT(*) FROM department
UNION ALL SELECT 'Semester', COUNT(*) FROM semester
UNION ALL SELECT 'Course', COUNT(*) FROM course
UNION ALL SELECT 'Student', COUNT(*) FROM student
UNION ALL SELECT 'Building', COUNT(*) FROM building
UNION ALL SELECT 'Room', COUNT(*) FROM room
UNION ALL SELECT 'Class', COUNT(*) FROM class
UNION ALL SELECT 'Enroll', COUNT(*) FROM enroll;
GO
