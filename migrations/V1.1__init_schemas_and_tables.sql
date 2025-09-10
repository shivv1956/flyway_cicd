-- Create tables in SCHEMA1

CREATE SCHEMA IF NOT EXISTS ${schema};

CREATE TABLE IF NOT EXISTS ${schema}.users (
    user_id INT AUTOINCREMENT,
    username STRING,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS ${schema}.orders (
    order_id INT AUTOINCREMENT,
    user_id INT,
    order_amount NUMBER(10,2),
    order_date DATE
);
