
DROP USER 'CustomerAdmin'@'localhost';
CREATE USER 'CustomerAdmin'@'localhost' identified by 'pass';

GRANT SELECT ON store.* TO 'CustomerAdmin'@'localhost';

GRANT INSERT, UPDATE, DELETE ON store.Customer TO 'CustomerAdmin'@'localhost';
GRANT INSERT, UPDATE, DELETE ON store.SalesPerson TO 'CustomerAdmin'@'localhost';
GRANT INSERT, UPDATE, DELETE ON store.Store TO 'CustomerAdmin'@'localhost';
GRANT INSERT, UPDATE, DELETE ON store.City TO 'CustomerAdmin'@'localhost';
GRANT INSERT, UPDATE, DELETE ON store.FactSales TO 'CustomerAdmin'@'localhost';


DROP USER  'ProductsAdmin'@'localhost';
CREATE USER 'ProductsAdmin'@'localhost' identified by 'pass';

GRANT SELECT ON store.* TO 'ProductsAdmin'@'localhost';

GRANT INSERT, UPDATE, DELETE ON store.Product TO 'ProductsAdmin'@'localhost';
GRANT INSERT, UPDATE, DELETE ON store.ProductCategory TO 'ProductsAdmin'@'localhost';
GRANT INSERT, UPDATE, DELETE ON store.Store TO 'ProductsAdmin'@'localhost';
GRANT INSERT, UPDATE, DELETE ON store.City TO 'ProductsAdmin'@'localhost';
GRANT INSERT, UPDATE, DELETE ON store.FactSales TO 'ProductsAdmin'@'localhost';

/*
We Created 2 Users CustomerAdmin and ProductionsAdmin. 

Customer Admin Is responisble for the Organization of Customers and the Organization Of Staff
This Is the Reason He gets full access to Customer and SalesPerson Table. 

ProductsAdmin is responisble for the Organization of Products. This The Reason He gets Full Access to Product
and ProductCategory Tables.

However Both Users Get Full Access to Store City and Fact Sales as they may ever need to interfere with where someone
goes or what product goes where.

Lastly they are both able to see everything that is going on in the database. We assume mutual trust here and good team spirit.
*/







