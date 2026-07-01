use BankingDB;

CREATE VIEW Suspicious_Transactions AS 
SELECT
TransactionID,
CustomerID,
TransactionType,
Amount
FROM Transactions_2
WHERE Amount > 25000;

SELECT * FROM Suspicious_Transactions;

SELECT * FROM Transactions_2;

INSERT INTO Transactions_2
(TransactionID, AccountID, CustomerID, TransactionDate, Amount, TransactionType)
VALUES
(313, 203, 101, '2025-05-01', 66000, 'Deposit'),
(314, 204, 102, '2025-05-02', 61000, 'Withdrawal');

CREATE OR Replace View Suspicious_Transactions AS
SELECT
t.TransactionID,
CONCAT(c.FirstName, ' ', c.LastName) AS CustomerName, 
c.BranchName,
t.TransactionType,
t.Amount
FROM Transactions_2 t
INNER JOIN Customers_2 c
ON t.CustomerID = c.CustomerID
WHERE t.Amount > 25000;

SELECT * FROM Suspicious_Transactions;

SELECT 
TransactionID,
CustomerName,
BranchName,
TransactionType,
Amount
FROM Suspicious_Transactions
ORDER BY Amount DESC;
 