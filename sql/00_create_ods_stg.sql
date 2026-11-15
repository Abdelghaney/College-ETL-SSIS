-- Creates the two databases used by the pipeline.
-- The staging table (STG_full_data) is created by 03_create_ods_full_data.sql,
-- because it copies its structure from ODS_db.dbo.full_data.
IF DB_ID('ODS_db') IS NULL CREATE DATABASE ODS_db;
GO
IF DB_ID('STG_db') IS NULL CREATE DATABASE STG_db;
GO
