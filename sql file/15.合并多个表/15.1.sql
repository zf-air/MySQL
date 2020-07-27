use sql_store;

select 
	o.order_id,
	o.order_date,
    c.first_name,
    c.last_name,
    o.status
    
from orders as o
join customers as c
	on c.customer_id = o.customer_id
join order_statuses as os 
	on o.status = os.order_status_id