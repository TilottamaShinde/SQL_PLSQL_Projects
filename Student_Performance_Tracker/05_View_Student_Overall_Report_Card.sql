CREATE OR REPLACE VIEW Student_Overall_Report_Card AS 
SELECT
	s.student_id,
    CONCAT(s.first_name, ' ' , s.last_name) AS Student_Name,
    COUNT(m.course_id) AS Total_Subjects,
    SUM(m.marks_obtained) AS Total_Marks_Obtained,
    SUM(m.max_marks) AS Total_Max_Marks,
    ROUND((SUM(m.marks_obtained) / SUM(m.max_marks)) * 100, 2) AS Overall_Percentage
FROM
	Students s
INNER JOIN
	Marks m ON s.student_id = m.student_id
GROUP BY 
	s.student_id, s.first_name, s.last_name
ORDER BY
	s.student_id;