-- This SQL script creates a view named 'need_meeting' which displays the name of students from 'students' table who have score less than 80, and have not had a meeting in the last month or have never had a meeting before.

DROP VIEW IF EXISTS need_meeting;
CREATE VIEW need_meeting AS
    SELECT name
        FROM students
        WHERE score < 80 AND
            (
                last_meeting IS NULL
                OR last_meeting < SUBDATE(CURRENT_DATE(), INTERVAL 1 MONTH)
            );
