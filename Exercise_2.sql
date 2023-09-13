-- Active: 1694600651436@@127.0.0.1@5432@School
CREATE TABLE university.Enrollments(
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER,
    FOREIGN KEY(student_id) REFERENCES university.students(student_id),
    course_id INTEGER,
    FOREIGN KEY(course_id) REFERENCES university.courses(course_id)
);

INSERT INTO Enrollments(student_id, course_id)
VALUES (1,1), (2,1), (3,2), (4,3), (1,3);
ALTER TABLE Enrollments 
ADD CONSTRAINT unique_enrollment
UNIQUE (student_id, course_id);

SELECT * FROM university.enrollments;

INSERT INTO Enrollments(student_id, course_id)
VALUES (1,1) 
ON CONFLICT DO NOTHING;


CREATE TABLE university.TeacherCourse(
    teacherCourse_id SERIAL PRIMARY KEY,
    teacher_id INTEGER,
    FOREIGN KEY(teacher_id) REFERENCES university.teachers(teacher_id),
    course_id INTEGER,
    FOREIGN KEY(course_id) REFERENCES university.courses(course_id)
);

INSERT INTO TeacherCourse(teacher_id, course_id)
VALUES (1,1), (2,2), (3,3);

SELECT * FROM university.teachercourse;

CREATE TABLE university.Grades(
    grade_id SERIAL PRIMARY KEY,
    enrollment_id INTEGER,
    FOREIGN KEY(enrollment_id) REFERENCES university.enrollments(enrollment_id),
    grade INTEGER
);

INSERT INTO university.grades(enrollment_id, grade)
VALUES (20, 86),(21, 95),(22, 76),(23, 99),(24, 82);

SELECT * FROM university.grades;

-- DROP TABLE university.grades

