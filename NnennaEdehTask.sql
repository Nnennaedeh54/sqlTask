CREATE DATABASE Oneal;
--To create a table of my choice
CREATE TABLE Employee
(
ID int NOT NULL PRIMARY KEY,
Firstname varchar(50) NOT NULL,
Lastname varchar(50) NOT NULL,
Email    varchar(100) UNIQUE,
Gender   nvarchar(20) NOT NULL,
);

--To insert values in the Employee table
INSERT INTO Employee
VALUES(001, 'Ada', 'Obi', 'adaobi@gmail.com','female');
INSERT INTO Employee
VALUES(002, 'John', 'Mike', 'jmike@gmail.com','Male');
INSERT INTO Employee
VALUES(003, 'Smith', 'April', 's@april.com','male');
INSERT INTO Employee
VALUES(004, 'queen', 'Adama', 'adamqueen@gmail.com','female');

SELECT * FROM Employee;

--To use any built-in function
SELECT UPPER(Firstname) as FIRST_NAME,UPPER(Lastname) as LAST_NAME, LOWER(Email) as Email 
FROM Employee;

--Perform correct table locking and transaction on that table
BEGIN TRANSACTION

UPDATE Employee SET Gender = 'Male'
WHERE Firstname = 'Smith' and ID = 003
COMMIT TRANSACTION
Print 'Transaction Committed'


