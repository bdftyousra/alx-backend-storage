-- This SQL script creates a trigger named 'validate_email' that runs before an update on the 'users' table.
-- It compares the old email and new email, if they are different it sets the valid_email field to 0.

DROP TRIGGER IF EXISTS validate_email;
DELIMITER $$
CREATE TRIGGER validate_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email != NEW.email THEN
        SET NEW.valid_email = 0;
    ELSE
        SET NEW.valid_email = NEW.valid_email;
    END IF;
END $$
DELIMITER 
