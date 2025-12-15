CREATE DATABASE practice_db;
USE practice_db;
CREATE TABLE students (
  id INT,
  name VARCHAR(50),
  age INT
);

INSERT INTO students VALUES
(1, 'Rahim', 20),
(2, 'Karim', 22);

SELECT * FROM students;

