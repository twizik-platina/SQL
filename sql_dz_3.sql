--INSERT INTO students (first_name, last_name, age, average_score) VALUES
--('Иван', 'Петров', 20, 4.8),
--('Мария', 'Иванова', 19, 4.2),
--('Алексей', 'Сидоров', 22, 4.9),
--('Елена', 'Козлова', 21, 3.8),
--('Дмитрий', 'Смирнов', 20, 4.5),
--('Анна', 'Волкова', 18, 4.7),
--('Сергей', 'Морозов', 23, 3.5);

--SELECT * FROM students 


--INSERT INTO student_profiles (student_id, city, phone, email, about) VALUES
--(1, 'Москва', '+7-999-123-45-67', 'ivan@mail.ru', 'Увлекаюсь программированием'),
--(2, 'Санкт-Петербург', '+7-999-234-56-78', 'maria@mail.ru', NULL),
--(3, 'Москва', '+7-999-345-67-89', 'alex@mail.ru', 'Люблю математику'),
--(4, 'Казань', '+7-999-456-78-90', 'elena@mail.ru', NULL),
--(5, 'Москва', '+7-999-567-89-01', 'dmitry@mail.ru', 'Занимаюсь спортом');

--SELECT * FROM student_profiles


--SELECT * FROM students 
--JOIN student_profiles ON students.id = student_profiles.student_id;


--SELECT first_name, last_name, city, email 
--FROM students 
--JOIN student_profiles ON students.id = student_profiles.student_id;


--SELECT * FROM students 
--JOIN student_profiles ON students.id = student_profiles.student_id 
--WHERE city = 'Москва';


--SELECT * FROM students 
--JOIN student_profiles ON students.id = student_profiles.student_id 
--WHERE email = 'ivan@mail.ru';


--SELECT first_name, last_name, average_score, phone, email 
--FROM students 
--JOIN student_profiles ON students.id = student_profiles.student_id 
--WHERE average_score > 4.5;


--SELECT first_name, last_name, age, city 
--FROM students 
--JOIN student_profiles ON students.id = student_profiles.student_id 
--ORDER BY age;


--SELECT first_name, last_name, average_score, email 
--FROM students 
--JOIN student_profiles ON students.id = student_profiles.student_id 
--ORDER BY average_score DESC;


--SELECT first_name, last_name, about 
--FROM students 
--JOIN student_profiles ON students.id = student_profiles.student_id 
--WHERE about IS NOT NULL AND about != '';


--SELECT first_name, last_name, about 
--FROM students 
--JOIN student_profiles ON students.id = student_profiles.student_id 
--WHERE about IS NULL OR about = '';


--SELECT * FROM students 
--JOIN student_profiles ON students.id = student_profiles.student_id 
--WHERE students.id = 3;


--SELECT COUNT(*) FROM student_profiles;


--SELECT 
    --COUNT(*) AS всего_учеников,
    --COUNT(student_profiles.id) AS есть_профиль,
    --COUNT(*) - COUNT(student_profiles.id) AS нет_профиля
--FROM students 
--LEFT JOIN student_profiles ON students.id = student_profiles.student_id;


--SELECT * FROM students 
--LEFT JOIN student_profiles ON students.id = student_profiles.student_id 
--WHERE student_profiles.id IS NULL;


--SELECT 
    --students.*,
    --student_profiles.city,
    --student_profiles.phone,
    --student_profiles.email,
    --student_profiles.about
--FROM students 
--LEFT JOIN student_profiles ON students.id = student_profiles.student_id;


