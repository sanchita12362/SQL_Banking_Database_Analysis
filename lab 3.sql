INSERT INTO Transactions
(TransactionID, AccountID, TransactionDate, Amount, TransactionType)
VALUES
(301, 201, '2025-06-01 10:00:00', 5000, 'Credit'),
(302, 201, '2025-06-02 11:00:00', 2000, 'Debit');

SELECT * FROM Transactions;

INSERT INTO Branches
(BranchID, BranchName, BranchAddress, BranchPhone)
VALUES
(401, 'Andheri Branch', 'Mumbai Andheri East', '9871111111'),
(402, 'Borivali Branch', 'Mumbai Borivali West', '9872222222');

SELECT * FROM Branches;

INSERT INTO AccountBranches
(AccountID, BranchID, AssignmentDate)
VALUES
(201, 401, '2025-05-01'),
(201, 402, '2025-05-02');

SELECT * FROM AccountBranches;

UPDATE Customers
SET Phone = '9167458935'
WHERE CustomerID = 102;

Select * from customers;

UPDATE Customers
SET Email = 'priya.patil@gmail.com'
Where CustomerID = 102;

DELETE FROM Transactions
WHERE TransactionID = 302;

Select * from Transactions;

DELETE FROM Accounts
Where CustomerID = 102;

Select * from Accounts;

Delete from Transactions
where TransactionID = 302;

Select * from Transactions;