use BankingDB;

SELECT SUM(Balance) as Total_Balance From Accounts
WHERE AccountType = "Savings";

Select avg(Balance) as Average_Balance from Accounts;

Select max(Balance) as Highest_Balance from Accounts;

select min(Balance) as Lowest_Balance from Accounts;

Select count(*) as Total_Customer from Customers;

Select AccountType, sum(Balance) as Total_Balance from Accounts Group By AccountType;

Select AccountType, max(Balance) as Total_Balance from Accounts Group By AccountType;

Select AccountType, Balance from Accounts
WHERE Balance >= 25000;

Select AccountType, sum(Balance) as Total_Balance from Accounts
Group By AccountType
having sum(Balance) > 25000;

