CREATE TABLE DimAccount(
  AccountID int NOT NULL,
  CustomerID int NULL,
  AccountType varchar(10) NULL,
  Balance int NULL,
  DateOpened datetime2(0) NULL,
  Status varchar(10) NULL,
  CONSTRAINT PK_DimAccount PRIMARY KEY CLUSTERED (AccountID),
  CONSTRAINT FK_customer_id FOREIGN KEY (CustomerID)
  REFERENCES dbo.DimCustomer (CustomerID)
)


