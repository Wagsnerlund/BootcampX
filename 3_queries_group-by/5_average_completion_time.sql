SELECT name as student, avg(a.duration) as average_assignment_duration
FROM students s
JOIN assignment_submissions a ON s.id = a.student_id
WHERE end_date IS NULL
GROUP BY s.name
ORDER BY average_assignment_duration DESC

-- Get currently enrolled students' average assignment completion time.

-- Select the students name and average time from assignment submissions.
-- Order the results from greatest duration to least greatest duration.
-- A student will have a null end_date if they are currently enrolled