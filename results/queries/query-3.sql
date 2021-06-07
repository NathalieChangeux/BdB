SELECT number, date 
FROM orders
WHERE date=date(NOW())
ORDER By number DESC;