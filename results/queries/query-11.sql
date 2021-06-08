SELECT customers.first_name,customers.last_name, SUM(order_product.quantity*products.price) as SumOfOrders 
FROM customers 
LEFT JOIN orders ON orders.customer_id=customers.id 
LEFT JOIN order_product ON orders.id=order_product.order_id 
LEFT JOIN products ON order_product.product_id=products.id 
Group by customers.first_name,customers.last_name 
ORDER by customers.last_name
