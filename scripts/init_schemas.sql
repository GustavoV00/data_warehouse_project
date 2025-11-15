/*
=============================================================
Create Database and Schemas (PostgreSQL Version)
=============================================================
    This script creates a new database named 'datawarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.

How to Run:
    You can run this script using a PostgreSQL client like psql or a GUI tool like DBeaver or PgAdmin.
    It's recommended to run this while connected to the default 'postgres' database.

WARNING:
    Running this script will drop the entire 'datawarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

-- NOTE: In PostgreSQL, you typically run administrative commands like DROP/CREATE DATABASE
-- while connected to a default maintenance database, such as 'postgres'.

-- Drop the 'datawarehouse' database if it exists.
-- The WITH (FORCE) clause (available in PostgreSQL 13+) will terminate any active connections.
DROP DATABASE IF EXISTS datawarehouse WITH (FORCE);

-- Create the 'datawarehouse' database.
-- Using lowercase is a common convention in PostgreSQL to avoid needing to quote identifiers.
CREATE DATABASE datawarehouse;

-- To create objects inside the new database, you must connect to it.
-- If you are using the psql command-line tool, you can use the following command:
-- \c datawarehouse

-- The following commands assume you have connected to the 'datawarehouse' database.

-- Create Schemas
CREATE SCHEMA bronze;

CREATE SCHEMA silver;

CREATE SCHEMA gold;
