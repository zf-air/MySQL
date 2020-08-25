-- 1、查询"01"课程比"02"课程成绩高的学生的信息及课程分数
select s.s_id,s.s_name,s.s_birth,s.s_sex,sc.c_id,sc.s_score
from score sc,student s
where sc.s_id = s.s_id and sc.c_id in ('01','02') and s.s_id in(
	select sc1.s_id 
    from score sc1,score sc2
    where sc1.s_id = sc2.s_id and sc1.c_id = '01' and sc2.c_id = '02' and
		sc1.s_score > sc2.s_score
);