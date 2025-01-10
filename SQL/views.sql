CREATE VIEW CustomerOrders AS
SELECT c.id AS customerId, c.name AS customerName, 
  o.orderId, 
  o.orderValue
  sum(o.orderValue) OVER (Partition By o.customerId Order By o.created_date ) 
FROM Customers c
JOIN Orders o ON c.id = o.customerId;
