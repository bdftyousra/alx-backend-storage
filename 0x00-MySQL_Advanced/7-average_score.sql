-- This SQL script creates a stored procedure named 'ComputeAverageScoreForUser' which takes in one parameter user_id.
-- It computes the average score for a user by first summing up all the scores of the user from the 'corrections' table, counting the number of projects, and then dividing the total score by the number of projects, and then updating the 'average_score' field of the user in the 'users' table.

DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;
DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser (user_id INT)
BEGIN
    DECLARE total_score INT DEFAULT 0;
    DECLARE projects_count INT DEFAULT 0;

    SELECT SUM(score)
        INTO total_score
        FROM corrections
        WHERE corrections.user_id = user_id;
    SELECT COUNT(*)
        INTO projects_count
        FROM corrections
        WHERE corrections.user_id = user_id;

    UPDATE users
        SET users.average_score = IF(projects_count = 0, 0, total_score / projects_count)
        WHERE users.id = user_id;
END $$
DELIMITER ;
