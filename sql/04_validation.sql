/* ---------------------------------------------------------------
   Run AFTER the SSIS package has finished.
   Row counts must match across the three layers
   (75 with the provided sample data).
---------------------------------------------------------------- */
SELECT 'College.enroll'          AS layer, COUNT(*) AS total FROM College.dbo.enroll
UNION ALL
SELECT 'ODS_db.full_data',                COUNT(*)          FROM ODS_db.dbo.full_data
UNION ALL
SELECT 'STG_db.STG_full_data',            COUNT(*)          FROM STG_db.dbo.STG_full_data;

-- Enrollments that lost their student / course / room after the joins (expect 0 rows)
SELECT class_code, stu_num
FROM ODS_db.dbo.full_data
WHERE stu_fname IS NULL OR crs_title IS NULL OR room_code IS NULL;

-- Rows in ODS that are missing from staging (expect 0 rows)
SELECT class_code, stu_num FROM ODS_db.dbo.full_data
EXCEPT
SELECT class_code, stu_num FROM STG_db.dbo.STG_full_data;
