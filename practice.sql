-- Active: 1718951348188@@127.0.0.1@5432@university_management

--Database Operation

#Create database
CREATE DATABASE University_management;
#Rename database
ALTER DATABASE teachers RENAME TO faculty;
#Delete database
DROP DATABASE faculty;

--Table Operation

#Create table
CREATE TABLE Student(
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    cgpa NUMERIC(1,2)
)

#Rename table
ALTER TABLE Student RENAME TO STUDENTS;

#Delete table
DROP TABLE users2;

-- Table create with the Constrain
#First way to give constrain value
CREATE TABLE USERS(
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    age INT
)

ALTER TABLE users RENAME TO users1;

#Second way to give constrain value
CREATE TABLE USERS2(
    user_id SERIAL,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    age INT,
    PRIMARY KEY(user_id),
    UNIQUE(username, email)
)

CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    age INT DEFAULT 18
)


--Data Insertion
INSERT INTO users VALUES(11,'npn','npn@gmail.com');

INSERT INTO users(username, email) VALUES('abc','abc@gmail.com');

# insert multiple value in the value
INSERT INTO users(username, email)
VALUES
('xyz','xyz@gmail.com'),
('www','www@gmail.com')


-- Data clean of table without drop table
TRUNCATE users;

--Alter table
# Add a column
ALTER TABLE users 
ADD COLUMN password VARCHAR(255) DEFAULT 'admin123' NOT NULL;

# Rename of column
ALTER TABLE users
RENAME COLUMN demo TO country;

# Drop a column
ALTER TABLE users
DROP COLUMN age;

# Change datatype of column
ALTER TABLE users
ALTER COLUMN demo TYPE TEXT;

#Set default value of column
ALTER TABLE users
ALTER COLUMN country SET DEFAULT 'Bangladesh';

#Drop default value of column
ALTER TABLE users
ALTER COLUMN country DROP DEFAULT;


# Add constraint
ALTER TABLE users
ALTER COLUMN country SET NOT NULL;

#Drop constraint
ALTER TABLE users
ALTER COLUMN country DROP NOT NULL;

#unique and primary key constrain add and drop
ALTER TABLE users
ADD CONSTRAINT unique_email UNIQUE(email);

ALTER TABLE users
DROP CONSTRAINT unique_email;



--Table data retrieve
SELECT * FROM users;
SELECT username,email FROM users;