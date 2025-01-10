CREATE VIEW CustomerOrders AS  -- View to Synchronize Customer & Order data
SELECT c.id AS customerId, -- unique customer id
  concat(c.firstname, c.lastname) AS customerName, -- customer combined first and last name 
  o.orderId, -- order unique ID
  o.orderValue AS -- dollar amount exchanged for order
  sum(o.orderValue) OVER (Partition By o.customerId Order By o.created_date Unbounded Preceding) AS Value_to_date -- Running cumulative sum of all orders for that client threw current order
  o.created_date AS order_date -- date when customer completed the order
  date_part('month', o.created_date) AS order_month -- month when customer completed order
  date_part('year', o.created_date) AS order_year -- year when customer completed order
FROM Customers c
JOIN Orders o ON c.id = o.customerId;
