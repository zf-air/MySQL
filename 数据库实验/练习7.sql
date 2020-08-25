-- 9、查询学过编号为"01"并且也学过编号为"02"的课程的同学的信息
select s.*
from student s
where s.s_id in(
	select sc1.s_id
    from score sc1,score sc2
    where sc1.s_id = sc2.s_id and sc1.c_id = '01' and sc2.c_id = '02'
    );