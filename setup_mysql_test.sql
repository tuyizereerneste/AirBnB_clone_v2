-- Creates  MySQL server
-- A database hbnb_test_db
-- A new user hbnb_test and password is hbnb_test_pwd
-- hbnb_test should have all privileges on the database hbnb_test_db
-- hbnb_test should have SELECT privilege on the database performance_schema

-- Create a database if not exist
CREATE DATABASE IF NOT EXISTS hbnb_test_db;

-- Create User if not exist
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';

-- Grant all privileges on the database hbnb_test_db to hbnb_test
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost';

-- Grant SELECT privilege on the database performance_schema to hbnb_test
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';

-- Fluss privileges to apply changes
FLUSH PRIVILEGES;
