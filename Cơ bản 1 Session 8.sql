-- Sử dụng Count
SELECT COUNT(product_id) AS total_products
FROM Products;
-- Sử dụng Sum
SELECT SUM(total_amount) AS total_revenue
FROM Orders;
-- Sử dụng AVG
SELECT AVG(price) AS average_price
FROM Products;
-- Sử dụng Min và Max
SELECT MAX(total_amount) AS max_order_amount
FROM Orders;
SELECT MIN(total_amount) AS min_order_amount
FROM Orders;
-- Kết hợp với Where
SELECT COUNT(customer_id) AS hanoi_customers_count
FROM Customers
WHERE city = 'Hanoi';