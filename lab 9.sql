use BankingDB;

SELECT TransactionID,
CustomerID,
TransactionType,
Amount
FROM Transactions_2
WHERE Amount > (
SELECT AVG(Amount)
FROM Transactions_2);

SELECT
t.TransactionID,
t.CustomerID,
(
SELECT CONCAT(c. FirstName, ' ', c. LastName)
FROM Customers_2 c
WHERE c.CustomerID = t.CustomerID
) AS CustomerName,
(
SELECT c.BranchName
FROM Customers_2 c
WHERE c. CustomerID = t.CustomerID
) AS BranchName,
t.TransactionType,
t.Amount 
FROM Transactions_2 t
ORDER BY BranchName, t.CustomerID;

alter Table customers_2 
add column BranchName VARCHAR(100);

SELECT * FROM Customers_2;

INSERT INTO Customers_2
(CustomerID, FirstName, LastName, Email, Phone, AccountCreationDate, DateOfBirth, BranchName)
VALUES
(110, 'Sanchita', 'Shinde', 'sanchita@gmail.com', '9167416863', '2025-05-03', '2006-09-20', 'Dadar');

DESCRIBE Customers_2;

SELECT * FROM Transactions_2;

alter Table Transactions_2 
add column BranchName VARCHAR(100);

INSERT INTO Transactions_2
(TransactionID, AccountID, CustomerID, TransactionDate, Amount, TransactionType, BranchName)
VALUES
(312, 201, 110, '2025-06-02', 77000, 'Deposit', 'Dadar'); 