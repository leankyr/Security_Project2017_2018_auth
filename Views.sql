CREATE VIEW WhoSoldWhat AS
SELECT SalesPerson.SalesLastName,
     /*SalesPerson.SalesPersonId,*/
       Product.Name,
	   Product.SubCategory,
     /*  Product.ProductId,*/
    /*FactSales.Product,*/
     /*  FactSales.SalesPerson,*/
	   FactSales.OrderDate,
	  FactSales.Quantity	
FROM FactSales INNER JOIN SalesPerson
ON   FactSales.SalesPerson = SalesPerson.SalesPersonId INNER JOIN Product ON 
Product.ProductId = FactSales.Product;

CREATE VIEW CatOfProd AS
SELECT Product.Name,
     /*SalesPerson.SalesPersonId,*/
       ProductCategory.CatName,
       Product.SubCategory
FROM Product INNER JOIN ProductCategory
ON   ProductCategory.ProdCatId = Product.ProdCatId;

