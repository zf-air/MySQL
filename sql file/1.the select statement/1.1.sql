-- 使用数据库
USE sql_store;

-- 查询
select *
from customers
where points>1000
order by points