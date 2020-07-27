select order_id,o.customer_id,first_name,last_name
from orders as o
join customers as c on o.customer_id = c.customer_id