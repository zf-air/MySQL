
-- 11、查询没有学全所有课程的同学的信息 
select s.* 
from student s
join score sc
	on s.s_id = sc.s_id
group by s.s_id
having count(*) < (
	select count(*)
    from course
    );