SELECT students.fullname AS student_name, grades.grade
FROM students
JOIN grades ON students.id = grades.student_id
JOIN subjects ON grades.subject_id = subjects.id
JOIN groups ON students.group_id = groups.id
WHERE groups.name = 'ФФ-11' AND subjects.name = 'Основи програмування' AND grades.date_of = (
    SELECT MAX(date_of)
    FROM grades
    WHERE subject_id = subjects.id
);
