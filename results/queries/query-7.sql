SELECT SUM(order_product.quantity*products.price) AS totalPrice 
FROM orders 
INNER JOIN order_product ON(orders.id=order_product.order_id) 
INNER JOIN products ON(order_product.product_id=products.id) 
WHERE orders.date=date(NOW())
