CREATE DATABASE mdb;

USE mdb;

CREATE TABLE actors (actor_id INT NOT NULL AUTO_INCREMENT,
	last_name VARCHAR(30) NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    PRIMARY KEY(actor_id));
    
SELECT * FROM actors;

INSERT INTO actors VALUES
	(NULL, 'Hanks', 'Tom'),
    (NULL, 'Allen', 'Tim'),
    (NULL, 'Johansson', 'Scarlett');


