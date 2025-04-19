select * from sales;

-- Columns Description of the Dataset:
-- ProductID: An unique id for each product
-- ProductName: The products name
-- Category: The name of the category in which this product  is
-- Price The cost of the product/Item
-- Rating: The average customer rtating for the product, Uisally on a scale
-- NumReviews: Number of customer reviews for the product
-- Discount: Discount rate for the product
-- sales: Number of unit sold
-- DateAdded: The introduction date of the product iin commerce
-- City: The city in which the product is sold



-- Find How many products infromation Are there
select
	count(productid)
from sales;


-- Find How many unique products Are there
select
	count(distinct productname)
from sales;




-- Find the 10 most expensive products 
select
	productname,
	price
from sales
order by price desc
limit 10;



-- Find how many categhories are there
select count(distinct category) from sales;



-- Find All categhories
select distinct category from sales;




--Find how many products are there under every category
select
	category,
	count(distinct productid) as total_product
from sales
group by 1;





-- Find average rating and how many products are sold under the category
select
	category,
	round(avg(rating),2) as avg_rating,
	sum(sales) as total_sales
from sales
group by 1;





--Find top 5 category in terms of avegrage rating
select
	category,
	round(avg(rating),2) as avg_rating,
	sum(sales) as total_sales
from sales
group by 1
order by avg_rating desc
limit 5;







--Find top 5 category in terms of highest product sold
select
	category,
	round(avg(rating),2) as avg_rating,
	sum(sales) as total_sales
from sales
group by 1
order by total_sales desc
limit 5;





-- Top product based on each category based on highest ptoduct sold

--------------------
select
	category,
	productname,
	sum(sales) as total_sold
from sales
group by 1,2
order by total_sold desc
-----------------------



with top_product as(
select
category,
	productname,
	sum(sales) as total_sold,
	rank() over (partition by category order by sum(sales) desc) as rank
from sales
group by 1,2
)
select
	category,
	productname,
	total_sold
from top_product
where rank = 1
order by total_sold desc;




-- Find total number of city
select count(distinct city) from sales;


-- Find all the city
select distinct city from sales;




-- Find average discount for every city
select
	city,
	round(avg(discount),2) as avg_discount
from sales
group by 1;
