-- Drop trigger of already exists
DROP TRIGGER IF EXISTS trg_after_marks_insert;

DELIMITER $$

CREATE TRIGGER trg_after_marks_insert
AFTER INSERT ON MARKS
FOR EACH ROW
BEGIN
	CALL Assign_Grade();
END $$

DELIMITER ;