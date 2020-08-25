-- 16、检索"01"课程分数小于60，按分数降序排列的学生信息
select s.*,sc.s_score
from student s,score sc
where s.s_id = sc.s_id and sc.c_id = '01' and sc.s_score <60
order by sc.s_score desc;