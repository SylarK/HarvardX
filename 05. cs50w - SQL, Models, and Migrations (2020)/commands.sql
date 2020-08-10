CREATE TABLE flights (

    id INTEGER PRIMARY KEY AUTOINCREMENT,
    origin TEXT NOT NULL, 
    destination TEXT NOT NULL, 
    duration INTEGER NOT NULL

);

INSERT INTO flights
    (origin, destination, duration)
    VALUES("New York", "London", 415);
INSERT INTO flights (origin, destination, duration) VALUES("Shangai", "Paris", 760);
INSERT INTO flights (origin, destination, duration) VALUES("Instanbul", "Tokyo", 700);
INSERT INTO flights (origin, destination, duration) VALUES("New York", "Paris", 435);
INSERT INTO flights (origin, destination, duration) VALUES("Moscow", "Paris", 245);
INSERT INTO flights (origin, destination, duration) VALUES("Lima", "New York", 455);

/*Syntax for get a table with informations*/
SELECT * FROM flights;
SELECT origin, destination FROM flights;
SELECT * FROM flights WHERE id = 3;
SELECT * FROM flights WHERE destination = 'Paris';
SELECT * FROM flights WHERE duration > 300;
SELECT * FROM flights WHERE duration > 300 AND destination = 'Paris';
SELECT * FROM flights WHERE duration < 300 OR destination = 'Paris';
SELECT * FROM flights WHERE origin LIKE '%a%';

/*Change some information (Syntax)*/

UPDATE flights
    SET duration = 430
    WHERE origin = 'New York'
    AND destination = 'London';

/*Delete (Syntax)*/
DELETE FROM flights WHERE destination = 'London';

/* Functions:
MAX
MIN
AVERAGE
SUM
COUNT
...

 */

 /* Some Clauses
 LIMIT
 ORDER BY
 GROUP BY
 HAVING
 ...
 
 */

/*Syntax Join
JOIN / INNER JOIN
LEFT OUTER JOIN
RIGHT OUTER JOIN
*/

SELECT first, origin, destination FROM flights, JOIN passengers ON passengers.flight_id = flight_id;


/*CREATE INDEX*/

CREATE INDEX name_index ON passengers (last);

/*SQL Injection*/

/*Race Condition*/
/*
On SQLite3
.mode columns
.headers yes

*/