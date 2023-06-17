SELECT [groups].name AS group_name, AVG(g.grade) AS avg_grade
FROM [groups]
JOIN students ON [groups].id = students.group_id
JOIN grades g ON students.id = g.student_id
JOIN subjects subj ON g.subject_id = subj.id
WHERE subj.name = 'Основи програмування'
GROUP BY [groups].id, [groups].name;