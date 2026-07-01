create table students (
    id serial,
    userName varchar(50) unique,
    email varchar(100)
);
select * FROM students;