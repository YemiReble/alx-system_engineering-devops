-- This program Run some Sql Command as Indicated Below

-- Create Users
-- CREATE USER IF NOT EXISTS 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';

-- echo GRANT ALL PRIVILEGES ON database_name.* TO 'holberton_user'@'localhost';

-- Create Replication Client
-- GRANT REPLICATION CLIENT ON *.* TO 'holberton_user'@'localhost';

-- Create a New Table
-- CREATE DATABASE IF NOT EXISTS tyrell_corp;
-- USE tyrell_corp
-- CREATE TABLE IF NOT EXISTS nexus6 (id INT NOT NULL, name VARCHAR(200));
-- USE tyrell_corp
-- INSERT INTO nexus6 (id, name) VALUES (1, 'Leon');
-- GRANT SELECT ON tyrell_corp.* TO 'holberton_user'@'localhost';

CREATE USER IF NOT EXISTS 'replica_user'@'%' IDENTIFIED BY 'passLog#2';
GRANT REPLICATION SLAVE ON *.* TO 'replica_user'@'%';
FLUSH PRIVILEGES;

-- GRANT SELECT ON mysql.user TO 'holberton_user'@'localhost';
