-- Get the total amount of time that a student has spent on all assignments.
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';

-- Get the total amount of time that all students from a specific cohort have spent on all assignments.
SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohorts_id
WHERE cohorts.name = 'FEB12';
