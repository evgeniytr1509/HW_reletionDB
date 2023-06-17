SELECT s.id, s.fullname, AVG(g.grade) AS avg_grade
FROM students s
JOIN grades g ON s.id = g.student_id
JOIN subjects subj ON g.subject_id = subj.id
WHERE subj.name = 'Основи програмування'
GROUP BY s.id, s.fullname
ORDER BY avg_grade DESC
LIMIT 1;