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


CREATE TABLE teachers (
    teacher_id SERIAL PRIMARY KEY,
    teacher_name VARCHAR(50)
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(50),
    teacher_id INT, foreign key (teacher_id) references teachers (teacher_id)
);

-- শিক্ষকদের বেশি ডাটা ইনসার্ট
INSERT INTO teachers (teacher_name) VALUES 
('Abdur Rahman'),
('Fahmida Kamal'),
('Dr. Anisul Islam'),
('Sharmin Akter'),
('Tanvir Ahmed');

-- কোর্সের বেশি ডাটা ইনসার্ট (teacher_id ম্যাচ করিয়ে)
INSERT INTO courses (course_name, teacher_id) VALUES 
('Database Management', 1),
('Algorithms', 2),
('Web Development', 1),
('Data Structures', 2),
('Artificial Intelligence', 3),
('Computer Networks', 4),
('Software Engineering', NULL); -- এই কোর্সের কোনো শিক্ষক নেই


-- select teacher_name,course_name from teachers as t left join courses as c on t.teacher_id = c.teacher_id

-- select teacher_name from teachers as t left join courses as c on t.teacher_id = c.teacher_id where c.course_id is null


select teacher_name,course_name from teachers as t full join courses as c on t.teacher_id = c.teacher_id where t.teacher_id is null or course_id is null