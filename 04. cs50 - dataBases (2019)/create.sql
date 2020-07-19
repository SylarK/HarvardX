CREATE TABLE flights (

    id SERIAL PRIMARY KEY,
    origin VARCHAR NOT NULL,
    destination VARCHAR NOT NULL, 
    duration INTEGER NOT NULL

);

INSERT INTO flights
(origin, destination, duration)
VALUES ('New York', 'Hong Kong', 380);
INSERT INTO flights
(origin, destination, duration)
VALUES ('Le Blanc', 'London', 640);
INSERT INTO flights
(origin, destination, duration)
VALUES ('Brazil', 'Florida', 480);
INSERT INTO flights
(origin, destination, duration)
VALUES ('Don Benito', 'New York', 215);
INSERT INTO flights
(origin, destination, duration)
VALUES ('New York', 'Brazil', 369);
INSERT INTO flights
(origin, destination, duration)
VALUES ('New York', 'Le Blanc', 502);
INSERT INTO flights
(origin, destination, duration)
VALUES ('Brazil', 'New York', 390);

SELECT * FROM flights;
SELECT origin, destination FROM flights;
SELECT * FROM flights WHERE id = 3;
SELECT * FROM flights WHERE origin = 'New York';
SELECT * FROM flights WHERE duration < 500;
SELECT * FROM flights WHERE destination = 'New York' AND duration > 400;
SELECT AVG(duration) WHERE destination = 'New York';
SELECT COUNT(*) FROM flights;
SELECT MIN(duration) FROM flights;
SELECT MAX(duration) FROM flights;
SELECT * FROM flights WHERE origin LIKE '%a%';


SELECT * FROM flights ORDER BY duration ASC;
SELECT * FROM flights ORDER BY duration ASC 3;
SELECT * FROM flights ORDER BY duration DESC;

SELECT origin, COUNT(*) FROM flights GROUP BY origin;
SELECT origin, COUNT(*) FROM flights GROUP BY origin HAVING COUNT(*) > 1;


UPDATE flights
    SET duration = 590
    WHERE origin = 'New York'
    AND destination = 'London';

DELETE FROM flights
    WHERE destination = 'Tokyo';


/* 
FOREIGN KEYS 
The method for connect multiple tables together 
*/

CREATE TABLE passengers (
    
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    flight_id INTEGER REFERENCES flights
    
);

INSERT INTO passengers (name, flight_id)
VALUES ('Bob Lee', 1);
INSERT INTO passengers (name, flight_id)
VALUES ('Marry Morroe', 1);
INSERT INTO passengers (name, flight_id)
VALUES ('Michael Kyle', 2);
INSERT INTO passengers (name, flight_id)
VALUES ('Merlin', 4);
INSERT INTO passengers (name, flight_id)
VALUES ('Say Nor', 4);

SELECT origin, destination, nome FROM flights JOIN passengers 
ON passengers.flight_id = flight_id;
SELECT origin, destination, nome FROM flights JOIN passengers 
ON passengers.flight_id = flight_id WHERE nome LIKE 'Bob%';
SELECT origin, destination, nome FROM flights LEFT JOIN passengers 
ON passengers.flight_id = flight_id;
SELECT origin, destination, nome FROM flights RIGHT JOIN passengers 
ON passengers.flight_id = flight_id;
SELECT origin, destination, nome FROM flights INNER JOIN passengers 
ON passengers.flight_id = flight_id;



/*
CREATE INDEX
*/

SELECT * FROM flights WHERE id IN (SELECT flight_id FROM passengers
GROUP BY flight_id HAVING COUNT(*) > 1);

