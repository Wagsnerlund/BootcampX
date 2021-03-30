-- SELECT c.name as cohort_name, count(s.cohort_id) as student_count
-- FROM cohorts c
-- JOIN students s ON c.id = s.cohort_id
-- GROUP BY c.id
-- HAVING count(s.cohort_id) >= 18
-- ORDER BY student_count

SELECT cohorts.name as cohort_name, count(*) as student_count
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.id
HAVING count(*) >= 18
ORDER BY student_count