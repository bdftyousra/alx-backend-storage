-- This SQL script creates a stored procedure named 'AddBonus' which takes in three parameters user_id, project_name and score.
-- It inserts a new record into the 'corrections' table, by first checking if the project already exists in the 'projects' table, if it doesn't it will add a new project to the table and then it will use the project_id in the insert statement for the 'corrections' table.

DROP PROCEDURE IF EXISTS AddBonus;
DELIMITER $$
CREATE PROCEDURE AddBonus (user_id INT, project_name VARCHAR(255), score FLOAT)
BEGIN
    DECLARE project_count INT DEFAULT 0;
    DECLARE project_id INT DEFAULT 0;

    SELECT COUNT(id)
        INTO project_count
        FROM projects
        WHERE name = project_name;
    IF project_count = 0 THEN
        INSERT INTO projects(name)
            VALUES(project_name);
    END IF;
    SELECT id
        INTO project_id
        FROM projects
        WHERE name = project_name;
    INSERT INTO corrections(user_id, project_id, score)
        VALUES (user_id, project_id, score);
END $$
DELIMITER ;
