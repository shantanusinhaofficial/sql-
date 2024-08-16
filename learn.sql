-- DROP AND CREATE PAYMENT TABLE
DROP TABLE IF EXISTS payment;
CREATE TABLE payment(
    customer_id INTEGER PRIMARY KEY,
    customer VARCHAR(50),
    mode VARCHAR(20),
    city VARCHAR(20)
);

-- INSERT DATA INTO PAYMENT TABLE
INSERT INTO payment (customer_id, customer, mode, city)
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

-- SELECT MODE AND COUNT OF CUSTOMERS FROM PAYMENT TABLE
SELECT mode, COUNT(customer)
FROM payment
GROUP BY mode;

-- DROP AND CREATE DEPARTMENT TABLE
DROP TABLE IF EXISTS department;
CREATE TABLE department(
    id INTEGER PRIMARY KEY,
    name VARCHAR(50)
);

-- INSERT VALUES INTO DEPARTMENT TABLE
INSERT INTO department VALUES
(101, 'english'),
(102, 'hindi');

-- DROP AND CREATE TEACHER TABLE
DROP TABLE IF EXISTS teacher;
CREATE TABLE teacher(
    id INTEGER PRIMARY KEY, 
    name VARCHAR(50),
    dept_id INTEGER,
    FOREIGN KEY (dept_id) REFERENCES department(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- INSERT VALUES INTO TEACHER TABLE
INSERT INTO teacher 
VALUES
(101, 'shaantanu', 101),
(102, 'sinha', 102);

-- SELECT ALL RECORDS FROM THE TEACHER TABLE
SELECT * FROM teacher;

-- DROP TEACHER TABLE
DROP TABLE IF EXISTS teacher;

-- UPDATE DEPARTMENT TABLE
UPDATE department 
SET id = 103
WHERE id = 102;

-- SELECT ALL RECORDS FROM THE DEPARTMENT TABLE
SELECT * FROM department;
