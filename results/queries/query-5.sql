SELECT products.name, order_product.quantity, products.price 
FROM products 
INNER JOIN order_product ON products.id=order_product.product_id 
WHERE order_product.order_id = 1 