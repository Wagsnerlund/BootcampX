SELECT a.day, count(a) as number_of_assignments, sum(a.duration) as duration
FROM assignments a
GROUP BY a.day
ORDER BY a.day

-- We need to be able to see the number of assignments that each day has and the total duration of assignments for each day.
-- Get each day with the total number of assignments and the total duration of the assignments.
-- Select the day, number of assignments, and the total duration of assignments.
-- Order the results by the day.