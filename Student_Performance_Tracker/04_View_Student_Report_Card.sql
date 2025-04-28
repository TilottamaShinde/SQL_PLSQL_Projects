CREATE OR REPLACE VIEW Student_Report_Card AS
SELECT
	s.student_id,
    s.first_name,
    s.last_name,
    c.course_name,
    m.marks_obtained,
    m.max_marks,
    ROUND((m.marks_obtained/max_marks)*100,2)AS Percentage,
    m.exam_date
FROM 
	Students s
INNER JOIN 
	Marks m on s.student_id = m.student_id
INNER JOIN 
	Courses c on m.course_id = c.course_id
ORDER BY 
	s.student_id,  m.exam_date;
    
    
