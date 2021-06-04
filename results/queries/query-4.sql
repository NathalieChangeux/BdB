SELECT date FROM orders
WHERE date > subdate(current_date, 10)