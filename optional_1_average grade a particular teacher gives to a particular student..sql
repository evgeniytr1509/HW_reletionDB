SELECT AVG(grades.grade) AS average_grade
FROM grades
JOIN students ON grades.student_id = students.id
JOIN subjects ON grades.subject_id = subjects.id
JOIN teachers ON subjects.teacher_id = teachers.id
WHERE teachers.fullname = 'Оксенія Бабариченко' AND students.fullname = 'Мирослав Лавренко';
