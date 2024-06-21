
CREATE TABLE Department(
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50)
)

INSERT INTO department VALUES(1, 'IT')

DELETE FROM department WHERE dept_id = 1;

SELECT * FROM department;

CREATE TABLE Employee(
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50),
    department_id INT,
    CONSTRAINT fk_constraint_dept 
    FOREIGN KEY(department_id) 
    REFERENCES Department(dept_id)
)

INSERT INTO employee VALUES(1,'Fahim',1);

DELETE FROM employee WHERE emp_id = 1;

SELECT * FROM employee;