-- 13、查询和"01"号的同学学习的课程完全相同的其他同学的信息 
select s.*
from student s
where s.s_id in (
	-- 学过的课程数相同
	select sc.s_id
    from score sc
	group by sc.s_id
	having count(*) = (
		select count(*)
		from score a
		where a.s_id = '01'
		)
	)
and
s.s_id not in(
	-- 不存在 学过 01号同学没学过的课程
	select c.s_id 
    from score c
    where c.c_id not in(
		select d.c_id
        from score d
        where d.s_id = '01'
        )
	)
and 
s.s_id != '01';