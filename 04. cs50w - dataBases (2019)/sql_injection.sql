SELECT * FROM users
    WHERE (username = username)
    AND (password = password);

/* Ex. SQL INJECTION */

SELECT * FROM users
    WHERE (username = hacker)
    AND (password = '1' OR '1' = '1');

/* SQL TRANSACTIONS
BEGIN 
COMMIT
*/

/* 
SQLAlchemy
is a python library that we use for connect the python with sql


*/