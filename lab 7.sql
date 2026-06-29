use BankingDB;

CREATE TABLE loan_applications (
    application_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    risk_score INT);
   
INSERT INTO loan_applications (application_id, customer_name, risk_score)
VALUES
(101, 'Amit Sharma', 95),
(102, 'Priya Patel', 88),
(103, 'Rahul Verma', 88),
(104, 'Sneha Joshi', 82),
(105, 'Karan Mehta', 75);

SELECT application_id,
       customer_name,
       risk_score,
       RANK() OVER (ORDER BY risk_score DESC) AS risk_rank
FROM loan_applications;


