#DQL DEMONSTRATION
use BankingDB;
SELECT * FROM Customers;
SELECT * FROM Accounts;
SELECT * FROM Branches;
SELECT * FROM Loans;
SELECT * FROM AccountBranches;
SELECT * FROM Transactions;

CREATE DATABASE SQL_PRACTICE;
USE SQL_PRACTICE;

SELECT * FROM Accounts
WHERE AccountType = "Savings";

SELECT * 
FROM Accounts
WHERE Balance > 15000;

SELECT *
FROM Transactions
WHERE Amount BETWEEN 5000 AND 20000;
SELECT *
FROM Transactions
WHERE Amount >= 5000 AND Amount <= 20000; 

SELECT * 
FROM customers
WHERE CustomerID IN (101,102,103);

SELECT *
FROM Customers
WHERE FirstName LIKE 'R%';

SELECT *
FROM Customers
ORDER BY FirstName DESC;

SELECT * 
FROM Accounts
ORDER BY Balance DESC;

SELECT DISTINCT AccountType
FROM Accounts;

SELECT *
FROM Accounts
ORDER BY Balance DESC
LIMIT 1;

SELECT *
FROM Transactions
LIMIT 5 OFFSET 2;

SELECT *
FROM Transactions
ORDER BY Amount DESC;

INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, AccountCreationDate, DateOfBirth)
VALUES
(106, 'Aditi', 'Patil', 'aditipatil@gmail.com', '2025-09-25', '2025-05-03'); 

SELECT * FROM Customers
WHERE Phone is NULL;

SELECT * FROM Customers
WHERE Email IS NOT NULL;

SELECT AccountID,
       Balance,
       CASE
           WHEN Balance >= 50000 THEN 'Premium Account'
           WHEN Balance >= 25000 THEN 'Standard Account'
           ELSE 'Basic Account'
       END AS AccountCategory
FROM Accounts;

SELECT AccountID,
Balance,
Rank() OVER (ORDER BY Balance DESC) AS BalanceRank
FROM Accounts;

SELECT TransactionID,
Amount,
SUM(Amount) OVER (ORDER BY TransactionDate) AS RunningTotal
FROM Transactions;

SELECT TransactionID,
Amount,
AVG(Amount) OVER () AS AverageTransaction
FROM Transactions;