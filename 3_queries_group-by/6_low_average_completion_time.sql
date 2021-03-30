SELECT s.name as student, avg(asub.duration) as average_assignment_duration, avg(a.duration) as average_estimated_duration
FROM students s
JOIN assignment_submissions asub ON s.id = asub.student_id
JOIN assignments a ON asub.assignment_id = a.id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(asub.duration) < avg(a.duration)
ORDER BY average_assignment_duration