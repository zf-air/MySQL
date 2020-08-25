-- 5、查询所有同学的学生编号、学生姓名、选课总数、所有课程的总成绩
select s.s_id,s.s_name,count(*),sum(sc.s_score)
from student s
join score sc
	on s.s_id = sc.s_id
group by s.s_id