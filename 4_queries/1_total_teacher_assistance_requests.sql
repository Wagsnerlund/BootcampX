SELECT count(ar.*) as total_assistances, t.name
FROM teachers t
JOIN assistance_requests ar ON t.id = ar.teacher_id
WHERE t.name = 'Waylon Boehm'
GROUP BY t.name

-- We need to be able to see how many assistance requests any teacher has completed.
-- Get the total number of assistance_requests for a teacher.
-- Select the teacher's name and the total assistance requests.
-- Since this query needs to work with any specific teacher name, use 'Waylon Boehm' for the teacher's name here.