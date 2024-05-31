-- Active: 1717176845480@@127.0.0.1@5432@university_management
# database,Create,Rename,Delete
--CREATE DATABASE TEST2;
-- ALTER DATABASE test2 RENAME TO test3;
-- DROP DATABASE test1;

# table create
CREATE TABLE students(
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    cgpa NUMERIC(1,2)
)

# Rename table
-- ALTER TABLE students RENAME TO learners;                         

# Delete table
--DROP TABLE learners;