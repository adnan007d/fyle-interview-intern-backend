-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
WITH max_teacher AS (
  SELECT teacher_id
  FROM assignments
  GROUP BY teacher_id
  ORDER BY COUNT(*) DESC
  LIMIT 1
)
SELECT count(*)
FROM assignments
WHERE grade = 'A'
  AND teacher_id = (SELECT teacher_id FROM max_teacher);
