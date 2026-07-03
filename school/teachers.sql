CREATE TABLE teachers (
    teacher_id SERIAL PRIMARY KEY,
    teacher_name VARCHAR(50)
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(50),
    teacher_id INT, foreign key (teacher_id) references teachers (teacher_id)
);


INSERT INTO teachers (teacher_name)
VALUES
('Mr. Hasan'),
('Mr. Karim'),
('Ms. Ayesha');


INSERT INTO courses (course_name, teacher_id)
VALUES
('Database', 1),
('Operating System', 2),
('Networking', 3);