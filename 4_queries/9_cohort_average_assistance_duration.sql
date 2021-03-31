SELECT AVG(total_duration) AS average_total_duration
FROM (
    SELECT c.name as cohort, sum(ar.completed_at - ar.started_at) as total_duration
    FROM cohorts c
    JOIN students s ON c.id = s.cohort_id
    JOIN assistance_requests ar ON s.id = ar.student_id
    GROUP BY c.name
    ORDER BY total_duration
  ) as total_duration
  
   -- We also need to know the average total amount of time being spent on an assistance request for each cohort. This is just the average of the total_duration column from the previous query.
  -- Calculate the average total duration of assistance requests for each cohort.
  -- Use the previous query as a sub query to determine the duration per cohort.
  -- Return a single row average_total_duration