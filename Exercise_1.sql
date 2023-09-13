-- Exercise 1
CREATE SCHEMA university

CREATE TABLE university.Students (
	student_id SERIAL PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	date_of_birth DATE,
	email TEXT UNIQUE
)
INSERT INTO university.students(first_name , last_name, date_of_birth, email)
VALUES ('Emily', 'Davis', '1993-03-25', 'emily.davis@example.com' ),
    ('Michael', 'Johnson', '1991-09-10', 'michael.johnson@example.com' ),
    ('Jane', 'Smith', '1992-05-20', 'jane.smith@example.com' ),
    ('John', 'Doe', '1990-01-15', 'john.doe@example.com' );

-- Exercise 2
CREATE TABLE university.Teachers(
	teacher_id SERIAL Primary Key,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	date_of_birth DATE,
	email TEXT UNIQUE,
	department TEXT,
	hire_date DATE
)

INSERT INTO university.teachers(first_name, last_name, date_of_birth, email, department,hire_date )
VALUES('Professor','Anderson','1975-04-08','prof.anderson@example.com','Computer Science','2010-08-15'),
		('Dr. Sarah', 'Wilson', '1980-12-20', 'sarah.wilson@example.com', 'Mathematics', '2015-05-02'),
		('Mr. James', 'Brown', '1978-06-14', 'james.brown@example.com','History', '2009-11-11' )

-- Exercise 3

CREATE TABLE university.Courses(
	course_id SERIAL Primary Key,
	course_name TEXT Not NULL,
	department TEXT,
	credits NUMERIC
)

INSERT INTO university.courses(course_name, department, credits)
VALUES ('Introduction to Programming', 'Computer Science', 3),
		('Calculus I', 'Mathematics', 4),
		('World History', 'History', 3)

-- Exercise 4

