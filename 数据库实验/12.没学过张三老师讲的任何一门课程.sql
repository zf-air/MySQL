-- 14、查询没学过"张三"老师讲授的任一门课程的学生姓名 
select s.s_name
from student s
where s.s_id not in(
	select sc.s_id
    from score sc
    where sc.c_id in(
		select c.c_id
        from score a,course c,teacher t
        where a.c_id = c.c_id and c.t_id = t.t_id
        and t.t_name = '张三' 
        )
	);