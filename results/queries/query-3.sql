SELECT number, date FROM orders
WHERE date BETWEEN subdate(current_date, 1) AND adddate(current_date, 1)
ORDER By number DESC;