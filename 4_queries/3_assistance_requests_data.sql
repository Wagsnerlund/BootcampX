SELECT t.name as teacher, s.name as student, a.name as assignment, (ar.completed_at - ar.started_at) as duration
FROM assistance_requests ar
JOIN teachers t ON ar.teacher_id = t.id
JOIN students s ON ar.student_id = s.id
JOIN assignments a ON ar.assignment_id = a.id
GROUP BY t.name, s.name, a.name, ar.completed_at, ar.started_at
ORDER BY duration

-- Each assistance request is related to a bunch of data like a teacher, student, assignment, and more. We want to be able to see all important data about an assistance request.
-- Get important data about each assistance request.
-- Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.
-- Subtract completed_at by started_at to find the duration.
-- Order by the duration of the request.