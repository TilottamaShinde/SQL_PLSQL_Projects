DROP TRIGGER IF EXISTS trg_after_marks_update;

DELIMITER $$

CREATE TRIGGER  trg_after_marks_update
AFTER UPDATE ON Marks
FOR EACH ROW
BEGIN
	CALL Assign_Grades();
END $$

DELIMITER ;

