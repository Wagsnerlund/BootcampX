SELECT t.name as teacher, c.name as cohort
FROM cohorts c
JOIN students s ON c.id = s.cohort_id
JOIN assistance_requests ar ON s.id = ar.student_id
JOIN teachers t ON ar.teacher_id = t.id
WHERE c.name = 'JUL02'
GROUP BY teacher, cohort
ORDER BY teacher

-- We need to know which teachers actually assisted students during any cohort.
-- Get the name of all teachers that performed an assistance request during a cohort.
-- Select the instructor's name and the cohort's name.
-- Don't repeat the instructor's name in the results list.
-- Order by the instructor's name.
-- This query needs to select data for a cohort with a specific name, use 'JUL02' for the cohort's name here.