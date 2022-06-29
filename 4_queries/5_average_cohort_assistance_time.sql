SELECT cohorts.name as name, avg(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_request_duration
FROM assistance_requests
JOIN students on student_id = students.id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_request_duration