
select * from calendar;
select * from inventory;
select * from products;
select * from sales;
select * from stores;

---date---------
select max(date) from calendar;
select min(date) from calendar;
------------------------------------------
-- Select distinct dates from the Calendar table:
SELECT DISTINCT date FROM calendar;

-- Count the total number of dates in the Calendar table:
SELECT COUNT(date_id) AS total_dates FROM calendar;

-- Find the total stock count for each product in the Inventory table:
SELECT product_id, SUM(stock_count) AS total_stock
FROM inventory
GROUP BY product_id;

--Find the date with the highest stock count across all products:
SELECT date
FROM calendar
ORDER BY date_id DESC
LIMIT 1;

-- List all dates where the stock count is zero for a specific product:
SELECT c.date, i.product_id, p.product_name FROM calendar c
INNER JOIN sales s ON c.date = s.date
INNER JOIN inventory i on i.product_id = s.product_id
INNER JOIN products p on p.product_id = s.product_id
where i.stock_count = 0
order by i.product_id;

-- Calculate the average stock count for each product:
SELECT product_id, AVG(stock_count) AS avg_stock
FROM inventory
GROUP BY product_id
ORDER BY product_id;

-- Find the store with the highest total stock count:
SELECT store_id, SUM(stock_count) AS total_stock
FROM inventory
GROUP BY store_id
ORDER BY total_stock DESC
LIMIT 1;

--List all products with stock count greater than 100:
SELECT product_id
FROM inventory
WHERE stock_count > 100;

-- Calculate the total stock count for a specific product on a given date:
SELECT i.product_id, COUNT(i.stock_count) AS total_stock
FROM inventory i 
INNER JOIN sales s on s.product_id = i.product_id
INNER JOIN calendar c on s.date = c.date
GROUP BY i.product_id;


-- Find the top 5 products with the highest stock count:
SELECT product_id, SUM(stock_count) AS total_stock
FROM inventory
GROUP BY product_id
ORDER BY total_stock DESC
LIMIT 5;
-- 

-- Units sold  every month
SELECT EXTRACT(MONTH from date) as Month_ , COUNT(units) from sales
GROUP BY Month_;


SELECT product_name,
	CASE
		WHEN product_price <= 5.00 THEN 'LOW TICKET'
		WHEN product_price <= 20.00 THEN 'AVERAGE TICKET'
		ELSE 'HIGH TICKET'
	END PRODS
FROM products;



SELECT * FROM products WHERE product_cost > 50.0;



SELECT sales_id, count(*) FROM sales
GROUP BY sales_id
HAVING count(*) > 1; 


SELECT * FROM stores WHERE store_city ilike '%__m%';

SELECT * FROM sales WHERE units > 100;



SELECT product_id, SUM(stock_count) AS total_stock FROM inventory GROUP BY product_id;


-- Calculate total revenue for each product:
SELECT p.product_id, p.product_name, SUM(s.units * p.product_price) AS total_revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name;



-- Select the store with the highest total revenue:
SELECT store_id, SUM(units * product_price) AS total_revenue
FROM sales
JOIN products ON sales.product_id = products.product_id
GROUP BY store_id,store_name
ORDER BY total_revenue DESC
LIMIT 1;


-- Update the stock count for a specific product:
UPDATE inventory SET stock_count = 50 WHERE product_id = 1 AND store_id = 1;

-- Inserting a new product:
INSERT INTO products (product_id, product_name, product_category, product_cost, product_price)
VALUES (21, 'Animal Figures', 'Toys', 20.0, 30.0);

--  Delete a specific sale:
DELETE FROM sales WHERE sales_id = 10;


-- Select products with prices between a certain range:
SELECT * FROM products WHERE product_price BETWEEN 10.0 AND 50.0;


-- Select the total stock count for each store:
SELECT store_id, SUM(stock_count) AS total_stock FROM inventory GROUP BY store_id;


-- Select the average product price:
SELECT AVG(product_price) AS average_price FROM products;

 -- Select the total units sold for each product:
SELECT product_id, SUM(units) AS total_units_sold FROM sales GROUP BY product_id;


-- Select the store with the highest stock count:
SELECT store_id, MAX(stock_count) AS max_stock FROM inventory GROUP BY store_id ORDER BY max_stock DESC LIMIT 1;


-- Select products and their corresponding stores:
SELECT p.product_name, s.store_name
FROM products p
INNER JOIN inventory i ON p.product_id = i.product_id
INNER JOIN stores s ON i.store_id = s.store_id;


-- Select the total cost and total revenue for each product:
SELECT p.product_id, p.product_name, SUM(i.stock_count * p.product_cost) AS total_cost,
       SUM(s.units * p.product_price) AS total_revenue
FROM products p
LEFT JOIN inventory i ON p.product_id = i.product_id
LEFT JOIN sales s ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name;





	












