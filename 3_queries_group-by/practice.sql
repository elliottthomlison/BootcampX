-- Get the total number of assignments for each day of bootcamp.
SELECT day, count(*) as total_assignments
FROM assignment_submissions
GROUP BY day
ORDER BY day;

-- The same query as before, but only return rows where total assignments is greater than or equal to 10.
SELECT day, count(*) as total_assignments
FROM assignment_submissions
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;

-- Get all cohorts with 18 or more students.
SELECT cohorts.name AS cohort_name, count(students.*) AS student_count
