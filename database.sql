create database marketplace; 

create table sales (
ProductID integer,
ProductName varchar(100),
Category varchar(100),
Price numeric(10,2),
Rating numeric(5,2),
NumReviews integer,
StockQuantity integer,
Discount numeric(5,2),
Sales integer,
DateAdded date,
City varchar(100)
--Stock bool
);

