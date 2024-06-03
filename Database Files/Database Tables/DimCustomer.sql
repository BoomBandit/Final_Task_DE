CREATE TABLE DimCustomer(
	CustomerID int NOT NULL,
	CustomerName varchar(50) NULL,
	Address varchar(max) NULL,
	CityName varchar(50) NULL,
	StateName varchar(50) NULL,
	Age varchar(3) NULL,
	Gender varchar(10) NULL,
	Email varchar(50) NULL,
 CONSTRAINT PK_customer PRIMARY KEY CLUSTERED (CustomerID )) 