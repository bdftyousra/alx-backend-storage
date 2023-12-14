-- This SQL script creates the 'users' table with 'id', 'email', 'name' and 'country' columns. 'id' is the primary key, auto-increment, 'email' is unique and not null. 'name' is not null and 'country' is not null, default value is 'US' and it only accept 'US', 'CO' or 'TN' as value. The script will first check if table already exists and drop it if it does, before creating a new table.

DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country CHAR(2) NOT NULL DEFAULT 'US' CHECK (country IN ('US', 'CO', 'TN'))
);
