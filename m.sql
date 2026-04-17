CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

CREATE TABLE grades (
    grade_id INT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    score INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO students VALUES
(1, 'Ali', 18, 'Tashkent'),
(2, 'Vali', 19, 'Samarkand'),
(3, 'Hasan', 18, 'Bukhara');

INSERT INTO grades VALUES
(1, 1, 'Math', 90),
(2, 1, 'English', 85),
(3, 2, 'Math', 78),
(4, 3, 'English', 88);

SELECT s.name, s.city, g.subject, g.score
FROM students s
JOIN grades g
ON s.student_id = g.student_id
ORDER BY g.score DESC;
