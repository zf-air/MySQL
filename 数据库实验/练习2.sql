-- 3、查询平均成绩大于等于60分的同学的学生编号和学生姓名和平均成绩
select s.s_id,s_name,avg(sc.s_score) as avg_score
from student s
join score sc
	on s.s_id = sc.s_id
group by s.s_id 
having avg_score >= 60;
		