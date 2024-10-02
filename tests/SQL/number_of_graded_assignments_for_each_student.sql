-- Write query to get number of graded assignments for each student:
SELECT count(*)
FROM assignments
WHERE grade IS NOT NULL
GROUP BY student_id;
