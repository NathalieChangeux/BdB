SELECT orders.number, SUM(order_product.quantity*products.price) AS totalPrice 
FROM orders 
INNER JOIN order_product ON orders.id=order_product.order_id 
INNER JOIN products ON products.id=order_product.product_id 
INNER JOIN customers ON orders.customer_id=customers.id
WHERE customers.first_name='charlize'
GROUP BY orders.number
