-- 6、查询"李"姓老师的数量 
select count(*)
from teacher t 
where t_name like '李%';