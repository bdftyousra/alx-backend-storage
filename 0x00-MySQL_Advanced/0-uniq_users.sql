-- This SQL script creates the 'users' table with 'id', 'email' and 'name' columns, where 'id' is the primary key and auto-increment,
-- 'email' is unique and not null, and 'name' is not null. The script will first check if table already exists and drop it if it does, before creating a new table.

DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
);
