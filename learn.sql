-- Online SQL Editor to Run SQL Online.
-- Use the editor to create new tables, insert data and all other SQL operations.

-- DROP TABLE IF EXISTS student;
-- CREATE TABLE student(
--     id INTEGER PRIMARY KEY,
--     name VARCHAR(50),
--     city VARCHAR(50),
--     roll INTEGER NOT NULL
-- );
-- INSERT INTO student (id, name, city, roll) 
--     VALUES
--     (1, 'shantanu', 'tilo', 20),
--     (2, 'shantanu', 'tilo', 22),
--     (3, 'shantanu', 'tilo', 202),
--     (4, 'shantanu', 'tilo', 25),
--     (5, 'shantanu', 'tilo', 28);

-- SELECT COUNT(roll) FROM student;

-- Aggregate functions collect data and return a single value.
-- The GROUP BY clause groups rows that have the same values into summary rows.
-- SELECT roll, COUNT(name) 
-- FROM student 
-- GROUP BY roll 
-- ORDER BY COUNT(name);

DROP TABLE IF EXISTS payment;
CREATE TABLE payment(
    coustomer_id INTEGER PRIMARY KEY,
    coustomer VARCHAR(50),
    mode VARCHAR(20),
    city VARCHAR(20)
);

INSERT INTO payment (coustomer_id, coustomer, mode, city)
VALUES
    (101, 'oliva barret', 'netbanking', 'portland'),
    (102, 'ethan sinclair', 'creditcard', 'miami'),
    (103, 'maya hernandez', 'creditcard', 'seattle'),
    (104, 'liam donovan', 'netbanking', 'denver'),
    (105, 'sophia hguyam', 'creditcard', 'new orleans'),
    (106, 'caleb foster', 'debitcard', 'minneapolis'),
    (107, 'ava patel', 'debitcard', 'phoenix'),
    (108, 'lucas carter', 'netbanking', 'boston'),
    (109, 'isabella martinez', 'netbanking', 'nashville'),
    (110, 'jackson brooks', 'creditcard', 'boston');

SELECT mode ,COUNT(coustomer)
FROM payment
GROUP BY mode;
-- select columns k upr condition lgata h
--from table name k upr
-- where rows k upr
--groupby columns
--having group k upr
--order by column asc k upr
-- where group by k pehle and having group by k baad
-- SELECT city 
-- FROM payment
-- WHERE city = 'denver'
-- GROUP BY city
-- HAVING max(mode) = 'netbanking';
--update it is used to update the rows
--we use set
UPDATE payment
SET mode = 'online'
WHERE mode = 'netbanking';
DELETE FROM payment
    WHERE mode = 'debitcard';
SELECT * FROM payment;
-- delete r0w

