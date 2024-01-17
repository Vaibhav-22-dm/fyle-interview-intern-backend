-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
SELECT COUNT(*) AS number_of_As 
FROM assignments 
WHERE assignments.grade = 'A' AND assignments.teacher_id = (
    SELECT A.teacher_id
    FROM assignments A
    GROUP BY A.teacher_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
);