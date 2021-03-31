SELECT t.name as teacher, c.name as cohort, count(ar) as total_assistances
FROM cohorts c
JOIN students s ON c.id = s.cohort_id
JOIN assistance_requests ar ON s.id = ar.student_id
JOIN teachers t ON ar.teacher_id = t.id
WHERE c.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher

-- We need to know which teachers actually assisted students during any cohort, and how many assistances they did for that cohort.
-- Perform the same query as before, but include the number of assistances as well.