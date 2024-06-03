CREATE PROCEDURE BalancePerCustomer
@name varchar(50)
AS
SELECT c.CustomerName,a.AccountType, a.Balance, 
a.Balance + SUM
(CASE 
	WHEN f.TransactionType = 'Deposit' THEN f.Amount 
	ELSE -f.Amount
END) 
AS CurrentBalance
FROM DimCustomer c
JOIN DimAccount a ON c.CustomerID= a.CustomerID
JOIN FactTransaction f ON f.AccountID = a.AccountID
WHERE c.CustomerName Like @name +'%'
GROUP BY c.CustomerName, a.AccountType, a.Balance



