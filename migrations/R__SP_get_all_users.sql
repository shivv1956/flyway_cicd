-- Repeatable migration for stored procedure
-- This will be re-applied whenever the file changes


CREATE OR REPLACE PROCEDURE ${schema}.sp_users()
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE IF EXISTS ${schema}.unique_users';

    -- Recreate it with aggregated data (last 30 days)
    EXECUTE IMMEDIATE '
        CREATE TABLE ${schema}.u_users
            AS 
            SELECT DISTINCT username FROM ${schema}.users;
    ';  
    RETURN 'Users fetched';
END;
$$;