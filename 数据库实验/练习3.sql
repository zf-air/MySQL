-- 4、查询平均成绩小于60分的同学的学生编号和学生姓名和平均成绩
		-- (包括有成绩的和无成绩的)
select s.s_id,s.s_name,avg(sc.s_score) as avg_score
from student s
join score sc
	on sc.s_id = s.s_id
group by s.s_id
	having avg_score < 60
union 
select a.s_id,a.s_name,0
from student a
where a.s_id not in(
	select b.s_id
    from score b
);