-- 15、查询两门及其以上不及格课程的同学的学号，姓名及其平均成绩 
select s.s_id,s.s_name,avg(sc.s_score) as avg_score
from student s,score sc
where s.s_id = sc.s_id and s.s_id in(
	select b.s_id 
    from score b
    where b.s_score <60
	group by b.s_id
	having count(*) >=2
    )
group by s.s_id,s.s_name;