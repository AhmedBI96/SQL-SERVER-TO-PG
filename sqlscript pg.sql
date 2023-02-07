-- Database: AdventureWorks

-- DROP DATABASE IF EXISTS "AdventureWorks";

CREATE DATABASE "AdventureWorks"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
create user etl with password 'demopass';
grant connect on database "AdventureWorks" to etl;
grant select,insert,delete,update on all tables in schema public to etl;
