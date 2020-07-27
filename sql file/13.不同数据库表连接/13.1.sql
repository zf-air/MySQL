use sql_inventory;

select *
from sql_store.order_items as oi
join products as p
	on p.product_id = oi.product_id