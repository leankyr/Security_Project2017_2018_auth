INSERT INTO ProductCategory(CatName) VALUES ('Electronics'),('Food'); 

SELECT * FROM ProductCategory;


INSERT INTO Product(ProdCatId,Name,SubCategory,Cost,Weight,Color,Price) 
		VALUES ('1','Computer','Portable','10','5','Yellow','15');
INSERT INTO Product(ProdCatId,Name,SubCategory,Cost,Weight,Color,Price) 
		VALUES ('1','Cellphone','Smartphone','300','2','Metal','400');
INSERT INTO Product(ProdCatId,Name,SubCategory,Cost,Weight,Color,Price) 
		VALUES ('1','Cellphone','Conventional','15','4','Black','16');
INSERT INTO Product(ProdCatId,Name,SubCategory,Cost,Weight,Color,Price) 
		VALUES ('1','Computer','Desktop','400','20','Blue','500');
INSERT INTO Product(ProdCatId,Name,SubCategory,Cost,Weight,Price) 
		VALUES ('2','Milk','Full','1','1','1.1');
INSERT INTO Product(ProdCatId,Name,SubCategory,Cost,Weight,Price) 
		VALUES ('2','Milk','Diet','1','1','1.2');

SELECT * FROM Product;

INSERT INTO Customer(FirstName,LastName,DateOfBirth,Phone,Address,CustCity) 
        VALUES ('Jhon','Doe','1987-10-28','1234567891','LongStreet 28','Smallvile');
INSERT INTO Customer(FirstName,LastName,DateOfBirth,Phone,Address,CustCity)      
  VALUES ('Georgios-Leandros','Kyriazis','1993-04-04','6948296767','Iliados 12','Thessaloniki');
INSERT INTO Customer(FirstName,LastName,DateOfBirth,Phone,Address,CustCity)      
        VALUES ('Zoi','Papadimitriou','1995-12-14','6924587969','Proxenou Koromila','Thessaloniki');
INSERT INTO Customer(FirstName,LastName,DateOfBirth,Phone,Address,CustCity)      
        VALUES ('Mary','Jane','1965-06-12','6987542658','Samuell Becket 25','Portsmouth');
INSERT INTO Customer(FirstName,LastName,DateOfBirth,Phone,Address,CustCity)      
        VALUES ('Tilemachos','Kyriazis','1965-12-01','2310548595','Dagkli 27','Kavala');
INSERT INTO Customer(FirstName,LastName,DateOfBirth,Phone,Address,CustCity)      
        VALUES ('Jane','Doe','1987-02-13','2654879856','LongStreet 28','Smallvile');

SELECT * FROM Customer;

INSERT INTO City(CityName,PostalCode)      
        VALUES ('NewYork','12345');
INSERT INTO City(CityName,PostalCode)                          
        VALUES ('Kavala','65500');
INSERT INTO City(CityName,PostalCode)                          
        VALUES ('Thessaloniki','54641');

SELECT * FROM City;

INSERT INTO Store(City,StoreName,Phone)
		VALUES ('Kavala','Store1','2510245456');
INSERT INTO Store(City,StoreName,Phone)
        VALUES ('Kavala','Store2','2510223456');
INSERT INTO Store(City,StoreName,Phone)
        VALUES ('Thessaloniki','Store1','2310223456');

SELECT * FROM Store; 

INSERT INTO SalesPerson(Store,SalesFirstName,SalesLastName )
		VALUES ('1','Whoever','anqwe'); 
INSERT INTO SalesPerson(Store,SalesFirstName,SalesLastName )
        VALUES ('1','Mary','Poppins');
INSERT INTO SalesPerson(Store,SalesFirstName,SalesLastName )
        VALUES ('2','Herman','James');
INSERT INTO SalesPerson(Store,SalesFirstName,SalesLastName )
        VALUES ('2','Antonis','Papadopoulos');
INSERT INTO SalesPerson(Store,SalesFirstName,SalesLastName )
        VALUES ('3','Helen','Papadopoulos');

SELECT * FROM SalesPerson;

INSERT INTO FactSales(Product,OrderDate,SalesPerson,Quantity)
		VALUES ('2','2018-02-06','2','1');
INSERT INTO FactSales(Product,OrderDate,SalesPerson,Quantity)
        VALUES ('5','2018-02-04','4','3');
INSERT INTO FactSales(Product,OrderDate,SalesPerson,Quantity)
        VALUES ('6','2018-02-14','4','2');
INSERT INTO FactSales(Product,OrderDate,SalesPerson,Quantity)
        VALUES ('2','2018-02-12','3','1');

SELECT * FROM FactSales;



