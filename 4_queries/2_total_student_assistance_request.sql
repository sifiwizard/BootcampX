SELECT count(assistance_requests.*) as total_assistances, students.name
FROM students
JOIN assistance_requests on students.id = student_id
WHERE name = 'Elliot Dickinson'
GROUP BY name