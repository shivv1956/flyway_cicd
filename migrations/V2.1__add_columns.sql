-- Add new columns to existing tables
ALTER TABLE ${schema}.users 
    ADD COLUMN email STRING;

