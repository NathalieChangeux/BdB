SELECT name, price FROM products 
INNER JOIN order_product ON order_product.products_id = products_id
WHERE products_id = 1 