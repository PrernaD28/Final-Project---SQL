#  University Course Management System (Final Project)

A robust relational database management project built using SQL. This system models a university's core academic structure—including departments, courses, students, instructors, and enrollments—and implements comprehensive queries ranging from basic CRUD operations to advanced subqueries and window functions.

-----

## Database Schema & Tables
The database consists of 5 interconnected relational tables:

Departments: Stores academic department details.

DepartmentID (PK)

DepartmentName

Students: Stores student personal and enrollment records.

StudentID (PK)

FirstName, LastName

Email (Unique)

BirthDate, EnrollmentDate

Courses: Stores university course offerings linked to departments.

CourseID (PK)

CourseName

DepartmentID (FK)

Credits

Instructors: Contains faculty member details and compensation.

InstructorID (PK)

FirstName, LastName

Email (Unique)

DepartmentID (FK)

Salary

Enrollments: Manages student-to-course registration mapping.

EnrollmentID (PK)

StudentID (FK)

CourseID (FK)

EnrollmentDate

## Implemented SQL Queries
The project script successfully executes all required tasks:

CRUD Operations: Demonstrates SELECT, UPDATE, and DELETE across tables.

Date Filtering: Retrieves students enrolled after the year 2022.

Department Filtering & Limits: Fetches Mathematics department courses with a result limit.

Aggregation & Grouping: Calculates enrollment counts per course with HAVING filters.

Set Operations: Finds students enrolled in both "Introduction to SQL" and "Data Structures" using INTERSECT.

Union / Conditional Filtering: Finds students enrolled in either course using IN.

Statistical Functions: Computes average course credits (AVG).

Max Calculations: Finds the maximum salary of Computer Science instructors (MAX).

Departmental Counts: Counts students per department via LEFT JOIN and GROUP BY.

INNER JOIN: Links students directly with their active course enrollments.

LEFT JOIN: Retrieves all students and their corresponding courses (including unenrolled students).

Subqueries: Identifies students enrolled in high-density courses.

Date/Time Functions: Extracts the enrollment year from dates.

String Manipulation: Concatenates instructor full names.

Window Functions: Computes a running total of enrollments using ROW_NUMBER() OVER.

CASE Expressions: Dynamically categorizes students as 'Senior' or 'Junior' based on tenure.


