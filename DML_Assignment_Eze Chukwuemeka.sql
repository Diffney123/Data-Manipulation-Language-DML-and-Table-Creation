create database Canada;

--Creation of the customer table
Create table customer(
Customer_id INT PRIMARY KEY,
Surname VARCHAR (50),
First_name VARCHAR(50),
State VARCHAR(30),
City VARCHAR(30),
Date_of_Birth date,
emailaddress VARCHAR(25),
);

-- Creation of the product table

Create table product(
product_id INT PRIMARY KEY,
product_name VARCHAR(50),
product_plan VARCHAR(50),
product_provider VARCHAR(35),
);

--Create Price table
Create table price(
price_id INT PRIMARY KEY,
price INT,
amount INT,
);

-- Insert data into the customer table
INSERT INTO customer (Customer_id, Surname, First_name, State, City, Date_of_Birth, emailaddress)
VALUES
  (1, 'chukwu', 'okoye', 'lagos', 'oworoshoki', '1992-01-30', 'chukwuokoye@gmail.com'),
  (2, 'peter', 'smith', 'abuja', 'utako', '1993-02-28', 'petersmith@gmail.com'),
  (3, 'adesua', 'atalor', 'enugu', 'mpko', '1956-12-15', 'adesuaatalor@gmail.com');

 --Insert data into the product table
 INSERT INTO product (product_id,product_name,product_plan,product_provider)
 VALUES (1,'valubah','valubah premuim','wellahealth'),
        (2,'valubah','valubah gold','mycovergenuis'),
		(3,'valubah','valubah premuim','wellahealth');

--Insert data into the price table
INSERT INTO price (price_id,price,amount)
VALUES (1,2000,2000),
       (2,2500,2500),
	   (3,2000,2000);

-- Update table
UPDATE product
SET product_name = 'valubahplus'
WHERE product_id = 1;



UPDATE customer
SET City= 'Bwari'
WHERE Customer_id = 2;



--Delete from the price table
Delete from price
WHERE price_id= 1;

--Delete from product table
Delete from product
WHERE product_id= 2;

--Delete from customer table
Delete from customer
WHERE Customer_id= 3;

