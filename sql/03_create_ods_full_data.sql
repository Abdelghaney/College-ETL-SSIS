/* ---------------------------------------------------------------
   Builds the ODS layer: ONE denormalized table (full_data) joining
   the College source tables.

   Grain: one row per student enrollment in a class (enroll table).
   LEFT JOINs keep every enrollment even if a related record is missing.

   Run 00_create_ods_stg.sql, 01 and 02 first.
---------------------------------------------------------------- */
USE ODS_db;
GO

DROP TABLE IF EXISTS dbo.full_data;
GO

SELECT
    -- enroll
    e.class_code,
    e.stu_num,
    e.enroll_date,
    e.enroll_grade,

    -- student
    s.stu_fname,
    s.stu_lname,

    -- student's department & school
    d.dept_code,
    d.dept_name,
    sc.school_code,
    sc.school_name,

    -- class
    cl.class_section,
    cl.class_time,

    -- semester
    sem.semester_code,
    sem.semester_year,
    sem.semester_term,
    sem.semester_start_date,
    sem.semester_end_date,

    -- course
    c.course_code,
    c.crs_title,
    c.crs_description,
    c.crs_credit,

    -- professor
    p.prof_num,
    p.prof_fname,
    p.prof_lname,
    p.prof_speacialty,
    p.prof_rank,
    p.prof_email,

    -- room & building
    r.room_code,
    r.room_type,
    b.bldg_code,
    b.bldg_name,
    b.bldg_location

INTO dbo.full_data          -- creates a new table named full_data
FROM College.dbo.enroll e
LEFT JOIN College.dbo.student    s   ON e.stu_num        = s.stu_code
LEFT JOIN College.dbo.department d   ON s.dept_code      = d.dept_code
LEFT JOIN College.dbo.school     sc  ON d.school_code    = sc.school_code
LEFT JOIN College.dbo.class      cl  ON e.class_code     = cl.class_code
LEFT JOIN College.dbo.semester   sem ON cl.semester_code = sem.semester_code
LEFT JOIN College.dbo.course     c   ON cl.crs_code      = c.course_code
LEFT JOIN College.dbo.professor  p   ON cl.prof_num      = p.prof_num
LEFT JOIN College.dbo.room       r   ON cl.room_code     = r.room_code
LEFT JOIN College.dbo.building   b   ON r.bldg_code      = b.bldg_code;
GO

/* ---------------------------------------------------------------
   Staging table: same structure as ODS full_data, created empty.
   The SSIS package truncates it and reloads it on every run.
---------------------------------------------------------------- */
USE STG_db;
GO

DROP TABLE IF EXISTS dbo.STG_full_data;
GO

SELECT *
INTO dbo.STG_full_data
FROM ODS_db.dbo.full_data
WHERE 1 = 0;
GO
