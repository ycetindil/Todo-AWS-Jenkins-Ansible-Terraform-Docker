CREATE DATABASE jenkinsproject;

\c jenkinsproject;

CREATE TABLE todo(
    todo_id SERIAL PRIMARY KEY,
    description VARCHAR(255)
);