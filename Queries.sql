create database underwater_herotoystore;

use underwater_herotoystore;
create table store(Store_ID varchar(20), Store_Name varchar(50), Contact_Number int);
 select * from store;

  Bulk Insert dbo.store
 From 'C:\Users\Devansh\Desktop\PJ\PJ1\Csv Files\Store.csv'
 WITH
 (
 FIRSTROW = 2,
 FIELDTERMINATOR = ',',
 ROWTERMINATOR = '\n',
 TABLOCK
 )

 select * from Store;

 create table customer (Customer_id int, Customer_Name varchar(50), Phone_Number varchar(10));

 select *from customer;

  Bulk Insert dbo.customer
 From 'C:\Users\Devansh\Desktop\PJ\PJ1\Csv Files\Customer.csv'
 WITH
 (
 FIRSTROW = 2,
 FIELDTERMINATOR = ',',
 ROWTERMINATOR = '\n',
 TABLOCK
 )

 select * from customer;

 create table Employee (Employee_Id int, Employee_Name varchar(25), Employee_HireDate date);

 select * from Employee;

  Bulk Insert dbo.Employee
 From 'C:\Users\Devansh\Desktop\PJ\PJ1\Csv Files\Employee.csv'
 WITH
 (
 FIRSTROW = 2,
 FIELDTERMINATOR = ',',
 ROWTERMINATOR = '\n',
 TABLOCK
 )

 select * from Employee;

 create table Payment (Payment_id int, Payment_Date date, Cost float);

 select * from Payment;

 Bulk Insert dbo.Payment
 From 'C:\Users\Devansh\Desktop\PJ\PJ1\Csv Files\Payment.csv'
 WITH
 (
 FIRSTROW = 2,
 FIELDTERMINATOR = ',',
 ROWTERMINATOR = '\n',
 TABLOCK
 )

select * from Payment;

Create table Product (Product_id int, Name varchar(50), Availability varchar(3));

select * from Product;

 Bulk Insert dbo.Product
 From 'C:\Users\Devansh\Desktop\PJ\PJ1\Csv Files\Product.csv'
 WITH
 (
 FIRSTROW = 2,
 FIELDTERMINATOR = ',',
 ROWTERMINATOR = '\n',
 TABLOCK
 )

 select * from Product;


LOAD DATA LOCAL INFILE 'C:/Users/Devansh/Desktop/P/PJ1/Csv Files/Store.csv'
INTO TABLE Store
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
Igonre l LINES
(Store_Id, Store_Name, Contact_Number);



LOAD DATA LOCAL INFILE 'C:/Users/Devansh/Desktop/PJ/PJ1/Csv Files/Payment.csv'
    -> INTO TABLE Payment
    -> FIELDS TERMINATED BY ','
    -> LINES TERMINATED BY '\r\n'
    -> IGNORE 1 LINES
    -> (Payment_id, Payment_Date, Cost);

LOAD DATA LOCAL INFILE 'C:/Users/Devansh/Desktop/PJ/PJ1/Csv Files/Product.csv'
    -> INTO TABLE Product
    -> FIELDS TERMINATED BY ','
    -> LINES TERMINATED BY '\r\n'
    -> IGNORE 1 LINES
    -> (Product_id, Name, Availability);


 LOAD DATA LOCAL INFILE 'C:/Users/Devansh/Desktop/PJ/PJ1/Csv Files/Customer.csv'
    -> INTO TABLE Customer
    -> FIELDS TERMINATED BY ','
    -> LINES TERMINATED BY '\r\n'
    -> IGNORE 1 LINES
    -> (Customer_id, Customer_Name, Phone_Number);



LOAD DATA LOCAL INFILE 'C:/Users/Devansh/Desktop/PJ/PJ1/Csv Files/Employee.csv'
    -> INTO TABLE Employee
    -> FIELDS TERMINATED BY ','
    -> LINES TERMINATED BY '\r\n'
    -> IGNORE 1 LINES
    ->  (Employee_Id, Employee_Name, Employee_HireDate);