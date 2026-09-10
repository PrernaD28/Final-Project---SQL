-- Create Database
CREATE DATABASE UniversityCourseManagement;
USE UniversityCourseManagement;

-- 1. Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);

INSERT INTO Departments VALUES 
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Physics'),
(4, 'Electrical Engineering');


-- 2. Students Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    BirthDate DATE,
    EnrollmentDate DATE
);

INSERT INTO Students VALUES 
(1, 'John', 'Doe', 'john.doe@email.com', '2000-01-15', '2022-08-01'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '1999-05-25', '2021-08-01'),
(3, 'Michael', 'Brown', 'michael.brown@email.com', '2002-03-12', '2023-09-01'),
(4, 'Emily', 'Davis', 'emily.davis@email.com', '2001-11-20', '2020-08-01'),
(5, 'David', 'Wilson', 'david.wilson@email.com', '2003-07-08', '2024-01-15');


-- 3. Courses Table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    DepartmentID INT,
    Credits INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Courses VALUES 
(101, 'Introduction to SQL', 1, 3),
(102, 'Data Structures', 2, 4),
(103, 'Linear Algebra', 2, 3),
(104, 'Quantum Mechanics', 3, 4),
(105, 'Database Systems', 1, 4),
(106, 'Calculus I', 2, 3);


-- 4. Instructors Table (Note: Added 'Salary' column to support Query 8)
CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    DepartmentID INT,
    Salary DECIMAL(10,2),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Instructors VALUES 
(1, 'Alice', 'Johnson', 'alice.johnson@univ.com', 1, 75000.00),
(2, 'Bob', 'Lee', 'bob.lee@univ.com', 2, 82000.00),
(3, 'Charlie', 'Green', 'charlie.green@univ.com', 1, 95000.00),
(4, 'Diana', 'Prince', 'diana.prince@univ.com', 3, 68000.00);


-- 5. Enrollments Table
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Enrollments VALUES 
(1, 1, 101, '2022-08-01'),
(2, 2, 102, '2021-08-01'),
(3, 1, 102, '2022-08-05'),
(4, 3, 101, '2023-09-02'),
(5, 3, 103, '2023-09-02'),
(6, 4, 104, '2020-08-03'),
(7, 5, 101, '2024-01-16'),
(8, 2, 105, '2021-08-02');



1. Perform CRUD Operations on all tables
-- READ
SELECT * FROM Students;

-- UPDATE
UPDATE Students 
SET Email = 'john.newemail@email.com' 
WHERE StudentID = 1;

-- DELETE
DELETE FROM Enrollments WHERE EnrollmentID = 8;

