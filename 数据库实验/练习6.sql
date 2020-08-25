-- 7、查询学过"张三"老师授课的同学的信息 
select distinct s.*,sc.c_id
from student s,score sc
where s.s_id = sc.s_id and sc.c_id in(
	select c.c_id 
    from course c
    where c.t_id = (
		select t.t_id
        from teacher t
        where t.t_name = '张三'
        )
	);
