CREATE DATABASE all_the_blogs

\c all_the_blogs

CREATE TABLE blogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  body VARCHAR(50000)
);
