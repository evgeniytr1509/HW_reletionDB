SELECT students.fullname AS student_name, grades.grade
FROM students
JOIN groups ON students.group_id = groups.id
JOIN grades ON students.id = grades.student_id
JOIN subjects ON grades.subject_id = subjects.id
WHERE groups.name = 'ФФ-11' AND subjects.name = 'Основи програмування';
