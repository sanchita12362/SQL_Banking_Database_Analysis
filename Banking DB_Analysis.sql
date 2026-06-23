CREATE DATABASE BankingDB;
USE BankingDB;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    AccountCreationDate DATE
);
SHOW DATABASES;
DESC Customers;
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,
    CustomerID INT,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) );
    CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    AccountID INT,
    TransactionDate DATE,
    Amount DECIMAL(10,2),
    TransactionType VARCHAR(20),
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID) );
    
    CREATE TABLE Branches (
	BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100),
    BranchAddress VARCHAR(200),
    BranchPhone VARCHAR(15)
);

CREATE TABLE AccountBranches (
    AccountID INT,
    BranchID INT,
    AssignmentDate DATE,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID),
    FOREIGN KEY (BranchID) REFERENCES Branches(BranchID)
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    CustomerID INT,
    LoanAmount DECIMAL(10,2),
    InterestRate DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
use BankingDB;
ALTER TABLE Customers
ADD DateOfBirth DATE;
ALTER TABLE Customers
MODIFY Phone VARCHAR(20);
Describe customers;
ALTER TABLE Accounts
ADD CONSTRAINT chk_MinBalance
CHECK (Balance >= 1000);
ALTER TABLE Customers
ADD CONSTRAINT uq_Email UNIQUE (Email);
DESCRIBE Customers;

INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, 
AccountCreationDate, DateOfBirth)
VALUES
(101, 'Riya', 'Sharma', 'riya@gmail.com', '8868947631', 
'2025-06-01', '2005-07-02'),
(102, 'Priya', 'Patil', 'priya@gmail.com', '9988776655', 
'2025-05-03', '2000-09-20'),
(103, 'Amit', 'Joshi', 'amit.joshi@gmail.com', '9123456780', 
'2025-06-02', '1999-11-25');

DESCRIBE Customers;

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(201, 101, 'Savings', 25000),
(202, 102, 'Current', 40000),
(203, 103, 'Savings', 15000);

DESCRIBE Accounts;

Select * FROM Accounts;

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