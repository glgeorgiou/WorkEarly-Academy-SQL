USE test;

# create the emplyee table
CREATE TABLE employee
( name VARCHAR(25) NOT NULL,
employee_id CHAR(9) NOT NULL,
manager_id CHAR(9) NOT NULL,
salary decimal(10,2) NULL,
PRIMARY KEY(employee_id),
FOREIGN KEY (manager_id) REFERENCES employee(employee_id) );


# Create table student with auto increment
DROP TABLE IF EXISTS students;
CREATE TABLE students(
studentid INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
name VARCHAR(25) NOT NULL
);


# Create table student without increment
DROP TABLE IF EXISTS students;
CREATE TABLE Students (
ID INT NOT NULL,
Name VARCHAR(255),
PRIMARY KEY (ID)
);


# Create table student with a composite primary key
DROP TABLE IF EXISTS students;
CREATE TABLE Students (
ID INT NOT NULL,
FirstName VARCHAR(255) NOT NULL,
LastName VARCHAR(255),
CONSTRAINT PK_Student PRIMARY KEY (ID, FirstName)
);


# Create table students using the UNIQUE constraint
DROP TABLE IF EXISTS students;
CREATE TABLE Students (   
   ID INT NOT NULL,
   LastName VARCHAR(255),
   FirstName VARCHAR(255) NOT NULL,
   CONSTRAINT PK_Student UNIQUE (ID, FirstName)
);