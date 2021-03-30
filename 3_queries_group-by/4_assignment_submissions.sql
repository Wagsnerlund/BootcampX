SELECT c.name as cohort, count(a.*) as total_submissions
FROM cohorts c
JOIN students s ON c.id = s.cohort_id
JOIN assignment_submissions a ON s.id = a.student_id
GROUP BY c.id
ORDER BY total_submissions DESC