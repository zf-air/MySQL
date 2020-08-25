create view sc (s_id,s_name,c_id,c_name,s_score)
as(
	select s.s_id,s.s_name,c.c_id,c.c_name,sc.s_score
	from student s,score sc,course c
    where s.s_id = sc.s_id and sc.c_id = c.c_id
)
