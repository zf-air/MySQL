select *
from orders
where not (customer_id > 2 and order_date > '1990-01-01')
