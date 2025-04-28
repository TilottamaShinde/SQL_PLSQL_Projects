DROP PROCEDURE IF EXISTS Assign_Grades;

DELIMITER $$

CREATE PROCEDURE Assign_Grades()
BEGIN 
	-- First clean the grades table
    DELETE FROM grades;

	-- insert fresh grades calculated from marks
    INSERT INTO grades (student_id, course_id, grade, created_at, updated_at)
    SELECT 
		student_id,
        course_id,
        CASE
			WHEN (marks_obtained / max_marks) * 100 >= 90 THEN 'A+'
            WHEN (marks_obtained / max_marks) * 100 >= 90 THEN 'A'
			WHEN (marks_obtained / max_marks) * 100 >= 90 THEN 'B'
			WHEN (marks_obtained / max_marks) * 100 >= 90 THEN 'C'
            WHEN (marks_obtained / max_marks) * 100 >= 90 THEN 'D'
            ELSE 'F'
		END AS grade,
        NOW(),
        NOW()
	FROM Marks;
END $$


DELIMITER ;
            