-- cities
CREATE TABLE cities (
                        city_id INTEGER PRIMARY KEY AUTO_INCREMENT,
                        address TEXT NOT NULL
);

INSERT INTO cities (address)
VALUES ('Moscow'), ('St. Petersburg'), ('Kirov'), ('Samara'), ('Volkhov'), ('Tikhvin');

-- students

CREATE TABLE students (
                          student_id INTEGER PRIMARY KEY AUTO_INCREMENT,
                          student_name TEXT NOT NULL,
                          student_age INTEGER NOT NULL,
                          city_id int,
                          FOREIGN KEY (city_id) REFERENCES cities (city_id)
);

INSERT INTO students (student_name, student_age, city_id)
VALUES ('Clark', 1995, 1),
       ('Dave', 1996, 2),
       ('Ava', 1998, 3),
       ('Tom', 1990, 4),
       ('Jerry', 2005, 1),
       ('Bill', 2003, 1),
       ('Dominica', 2004, 5),
       ('Rose', 1999, 6),
       ('Natalie', 2000, 1),
       ('Aurora', 2001, 2);


-- fetch

SELECT student_name as 'Имя'
FROM students inner join cities USING (city_id)
WHERE address = 'Moscow'
  AND (2023 - student_age) BETWEEN 18 AND 29
ORDER BY student_age;