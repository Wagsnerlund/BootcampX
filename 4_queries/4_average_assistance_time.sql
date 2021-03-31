SELECT avg(ar.completed_at - ar.started_at) as average_assistance_request_duration
FROM assistance_requests ar

-- Get the average time of an assistance request.
-- Select just a single row here and name it average_assistance_request_duration
-- In Postgres, we can subtract two timestamps to find the duration between them. (timestamp1 - timestamp2)