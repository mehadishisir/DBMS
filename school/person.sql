
create table persons(
    id serial primary key,
    name varchar(50) unique,
    email varchar(100) unique,
    age smallint check (age>18),
    isActive boolean default true
);
SELECT tablename FROM pg_tables WHERE tablename = 'persons';

INSERT INTO persons ( name, email, age)
VALUES
    ('John Doe', 'john.doe@example.com', 25),
    ('Jane Smith', 'jane.smith@example.com', 30);  
select * FROM persons;