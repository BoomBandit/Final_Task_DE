CREATE TABLE FactTransaction(
	TransactionID int NOT NULL,
	AccountID int NULL,
	TransactionDate datetime2(0) NULL,
	Amount int NULL,
	TransactionType varchar(50) NULL,
	BranchID int NULL,
  CONSTRAINT PK_FactTransaction PRIMARY KEY CLUSTERED (TransactionID),
  CONSTRAINT FK_account FOREIGN KEY(AccountID)
  REFERENCES dbo.DimAccount (AccountID),
  CONSTRAINT FK_branch FOREIGN KEY(BranchID)
  REFERENCES dbo.DimBranch (BranchID)
)