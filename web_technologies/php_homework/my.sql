-- create
CREATE TABLE students (
                          Id INTEGER PRIMARY KEY AUTO_INCREMENT,
                          name TEXT NOT NULL,
                          age INTEGER NOT NULL,
                          address TEXT NOT NULL
);

-- insert
INSERT INTO students (name, age, address)
VALUES ('Clark', 1995, 'Moscow'),
       ('Dave', 1996, 'St. Petersburg'),
       ('Ava', 1998, 'Kirov'),
       ('Tom', 1990, 'Samara'),
       ('Jerry', 2005, 'Moscow'),
       ('Bill', 2003, 'Moscow'),
       ('Dominica', 2004, 'Volkhov'),
       ('Rose', 1999, 'Tikhvin'),
       ('Natalie', 2000, 'Moscow'),
       ('Aurora', 2001, 'St. Petersburg');


-- fetch
SELECT name as 'Имя'
FROM students
WHERE address = 'Moscow'
  AND (2023 - age) BETWEEN 18 AND 29
ORDER BY age;
