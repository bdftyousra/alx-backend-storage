-- This SQL script creates a function named 'SafeDiv' which takes in two parameters a and b.
-- It performs a safe division of a by b, returning 0 if b is 0 to avoid a divide by zero error.

DROP FUNCTION IF EXISTS SafeDiv;
DELIMITER $$
CREATE FUNCTION SafeDiv (a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    DECLARE result FLOAT DEFAULT 0;

    IF b != 0 THEN
        SET result = a / b;
    END IF;
    RETURN result;
END $$
DELIMITER ;
