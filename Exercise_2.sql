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

SELECT * FROM university.enrollments;

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


