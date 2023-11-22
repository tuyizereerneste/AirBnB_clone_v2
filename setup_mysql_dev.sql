-- Prepares a MySQL server for the project
-- A database name is hbnb_dev_db
-- A new user hbnb_dev with password of hbnb_dev_pwd
-- in localhost.
-- hbnb_dev should have all privileges on the database hbnb_dev_db
-- hbnb_dev should have SELECT privilege on the database performance_schema

-- Create a database if not exist
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

-- Create a user if not exist
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';

-- Grant all privileges to hbnb_dev on hbnb_dev_db
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';

-- Grant SELECT privilege on the database performance_schema to hbnb_dev
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';

-- Flush to activate changes
FLUSH PRIVILEGES;
