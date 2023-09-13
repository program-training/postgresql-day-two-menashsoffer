CREATE TABLE university.StudyGroup(
    Group_id SERIAL PRIMARY KEY,
    Group_name TEXT
);

INSERT INTO university.StudyGroup(Group_name)
VALUES ('Introduction to Programming Group'),
('Calculus I Group'),
('World History Group');

SELECT * FROM university.StudyGroup;

CREATE TABLE university.GroupEnrollments(
    GroupEnrollments_ID SERIAL PRIMARY KEY,
    student_id INTEGER,
    FOREIGN KEY(student_id) REFERENCES university.students(student_id),
    Group_id INT,
    FOREIGN KEY(Group_id) REFERENCES university.StudyGroup(Group_id)
);

INSERT INTO university.GroupEnrollments(student_id, Group_id )
VALUES (1,3), (1,1), (2,1), (3,2), (4,3);

SELECT * FROM university.GroupEnrollments;
SELECT * FROM university.courses;
SELECT * FROM university.enrollments;
SELECT * FROM university.grades;
SELECT * FROM university.students;
SELECT * FROM university.studygroup;
SELECT * FROM university.teachercourse;
SELECT * FROM university.teachers;
SELECT * FROM university.StudyGroup;

