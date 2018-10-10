DROP DATABASE IF EXISTS store;

CREATE DATABASE store;
USE store;

CREATE TABLE ProductCategory(
	ProdCatId INT unsigned NOT NULL AUTO_INCREMENT,
	CatName VARCHAR(20) NOT NULL UNIQUE,
	PRIMARY KEY(ProdCatId)
);

CREATE TABLE Product
(
	ProductId INT unsigned NOT NULL AUTO_INCREMENT,
	ProdCatId INT unsigned NOT NULL,
	Name	  VARCHAR(20) NOT NULL,
	SubCategory VARCHAR(20) NOT NULL,
	Cost	  INT unsigned NOT NULL,
	Weight	  INT unsigned NOT NULL,
	Color	  VARCHAR(10),
	Price	  FLOAT NOT NULL,
	FOREIGN KEY (ProdCatId) REFERENCES ProductCategory(ProdCatId) ON DELETE CASCADE,
	PRIMARY KEY (ProductId)
);

/* I removed Table SubCategory and Put it IN a field in Product Table */

CREATE TABLE Customer
(
	CustId INT unsigned NOT NULL AUTO_INCREMENT,
	FirstName VARCHAR(30) NOT NULL,
	LastName  VARCHAR(20) NOT NULL,
	DateOfBirth Date NOT NULL,
	Phone VARCHAR(20) NOT NULL,
	Address VARCHAR(30) NOT NULL,
	CustCity VARCHAR(30) NOT NULL,
	PRIMARY KEY (CustId) 
);

/*Cannot Use Postal Code as Primary Key as they Are not Unique Globally */
CREATE TABLE City
(
	CityName VARCHAR(30) UNIQUE NOT NULL,
	PostalCode INT NOT NULL,
	PRIMARY KEY (CityName)
);

CREATE TABLE Store
(	
	StoreID INT unsigned NOT NULL AUTO_INCREMENT,
    City VARCHAR(30) NOT NULL,
    StoreName VARCHAR(30) NOT NULL,
	Phone VARCHAR(20) NOT NULL UNIQUE,
	FOREIGN KEY (City) REFERENCES City(CityName) ON DELETE CASCADE,
    UNIQUE(City,StoreName),
	PRIMARY KEY (StoreID)  

);

CREATE TABLE SalesPerson
(
	SalesPersonId INT unsigned NOT NULL AUTO_INCREMENT,
	Store INT unsigned NOT NULL,
	SalesFirstName VARCHAR(30) NOT NULL,
    SalesLastName  VARCHAR(20) NOT NULL,
	FOREIGN KEY (Store) REFERENCES Store(StoreID) ON DELETE CASCADE,
	PRIMARY KEY (SalesPersonId)
);

CREATE TABLE FactSales
(
	Product INT unsigned NOT NULL,
	OrderDate DATE NOT NULL,
	SalesPerson INT unsigned NOT NULL,
	Quantity INT NOT NULL,
	FOREIGN KEY (Product) REFERENCES Product(ProductId),
	FOREIGN KEY (SalesPerson) REFERENCES SalesPerson(SalesPersonId)
);



