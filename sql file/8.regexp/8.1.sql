-- 正则表达式

select *
from customers
where first_name regexp 'elka|ambur'  -- 里面不能加空格，也算字符