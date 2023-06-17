SELECT students.fullname AS student_name
FROM students
JOIN groups ON students.group_id = groups.id
WHERE groups.name = 'ФФ-11';
