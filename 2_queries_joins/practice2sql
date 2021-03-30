-- If we want to calculate the total number of assignment_submissions for all students, 
-- the count aggregate function is perfect.
SELECT count(assignment_submissions.*) as total_submissions
FROM assignment_submissions;

-- We will start by selecting the student's name from the students table, and the and the 
-- total submissions from the assignment_submissions table.
SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id;

-- Tell SQL that we want count(assignment_submissions.*) to be run for each students.name, instead of the entire query.
SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
GROUP BY students.name;

-- Alter the query slightly to only return currently enrolled students.
SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name;

-- Let's only return currently enrolled students who's total submissions are less than 100
SELECT students.name as student, count(assignment_submissions.*) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL 
GROUP BY students.name
Having count(assignment_submissions.*) < 100;
-- The HAVING clause is like WHERE but works on aggregated data. Our WHERE clause works on normal
-- data students.end_date and our HAVING clause works on the aggregated data count(assignment_submissions.*).

GROUP BY allows us to combine the results based on a column so an aggregate can be applied to each group.
HAVING allows us to filter our results based on the result of an aggregate function.