SELECT c.name as name, avg(ar.completed_at - ar.started_at) as average_assistance_time
FROM cohorts c
JOIN students s ON c.id = s.cohort_id
JOIN assistance_requests ar ON s.id = ar.student_id
GROUP BY c.name
ORDER BY average_assistance_time

-- We need to be able to see the average duration of a single assistance request for each cohort.
-- Get the average duration of assistance requests for each cohort.
-- Select the cohort's name and the average assistance request time.
-- Order the results from shortest average to longest.