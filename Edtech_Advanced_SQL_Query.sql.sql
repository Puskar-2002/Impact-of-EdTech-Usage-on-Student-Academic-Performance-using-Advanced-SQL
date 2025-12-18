show tables;
select * from colleges;
select * from performance;
select * from edtech_usage;
select * from students;
-- database link --
-- college (Main) - college_id
-- students - PK: students_id, FK: - college_id
-- edtech_usage - PK: usage_id, FK: - student_id
-- performance - PK: performance_id, FK: - student_id

-- Q. NO. 1 Find the top 3 performers in attendance
SELECT student_id, student_name, attendance_improvement
FROM (
SELECT
s.student_id, s.student_name,
(p.attendance_after_ai - p.attendance_before_ai) AS attendance_improvement,
ROW_NUMBER() OVER (ORDER BY (p.attendance_after_ai - p.attendance_before_ai) DESC) AS rn
FROM students s
JOIN performance p
ON s.student_id = p.student_id
) t
WHERE rn <= 3;


-- Q. NO 2 Which AI platform resulted in the highest GPA improvement?
SELECT ai_platform, gpa_improvement
FROM (
SELECT ai_platform, gpa_improvement, ROW_NUMBER() 
OVER (ORDER BY gpa_improvement DESC) AS rn
FROM (SELECT DISTINCT c.ai_platform, AVG(p.gpa_after_ai - p.gpa_before_ai)
OVER (PARTITION BY c.ai_platform) AS gpa_improvement
FROM colleges c
JOIN students s ON c.college_id = s.college_id
JOIN performance p ON s.student_id = p.student_id) t1
) t2
WHERE rn = 1;

-- Q. NO 3 Check whether increased usage hours lead to better quiz performance
SELECT DISTINCT
    student_id, student_name,
    total_hours,
    total_quizzes
FROM (
    SELECT
	s.student_id,
	s.student_name,
        SUM(u.hours_spent)
            OVER (PARTITION BY u.student_id) AS total_hours,
        SUM(u.quizzes_taken)
            OVER (PARTITION BY u.student_id) AS total_quizzes
    FROM students s
	JOIN edtech_usage u on s.student_id=u.student_id 
) t
ORDER BY total_hours DESC;


-- Q. NO 4 Identify departments most benefited from AI adoption (highest GPA improvement).

SELECT DISTINCT department, avg_gpa_improvement
FROM (SELECT s.department, AVG(p.gpa_after_ai - p.gpa_before_ai)
OVER (PARTITION BY s.department) AS avg_gpa_improvement
FROM students s
JOIN performance p
ON s.student_id = p.student_id
) t
ORDER BY avg_gpa_improvement DESC;














