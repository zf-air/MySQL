-- 12、查询至少有一门课与学号为"01"的同学所学相同的同学的信息 
select distinct s.*
from student s,score sc
where s.s_id = sc.s_id and s.s_id != '01' and sc.c_id in (
	select b.c_id
    from student a,score b
    where a.s_id = b.s_id and a.s_id = '01'
    );