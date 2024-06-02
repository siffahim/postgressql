-- Active: 1717176845480@@127.0.0.1@5432@test2
# database,Create,Rename,Delete
CREATE DATABASE TEST2;
ALTER DATABASE test2 RENAME TO test3;
DROP DATABASE test1;

# table create
CREATE TABLE students(
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    cgpa NUMERIC(1,2)
)

# Rename table
ALTER TABLE students RENAME TO learners;                         

# Delete table
DROP TABLE learners;

# Constraints
-- Multiple constrains use like this
CREATE TABLE users(
    user_Id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    age INT
)

# another way to give constraint
CREATE TABLE users2(
    user_Id SERIAL,
    username VARCHAR(255)  NOT NULL,
    email VARCHAR(255)  NOT NULL,
    age INT,
    PRIMARY KEY(user_id,username),
    UNIQUE(username, email)
)

CREATE TABLE users(
    user_Id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    age INT DEFAULT 18
)

#Insertion data to table
INSERT INTO users VALUES(1,'abc','abc@gmail.com');

#insert data defined with column name
INSERT INTO users(username,email) VALUES('abc','abc@gmal.com');

INSERT INTO users(username,email)
VALUES
('abc2','abc2@gmail.com'),
('abc3','abc3@gmail.com')

#table data delete without table
TRUNCATE TABLE users;

#Alter table

SELECT * FROM users;