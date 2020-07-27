use sql_hr;

select 
	e.first_name,
	e.last_name,
    e.reports_to
    
from employees as e
join employees as m
	on e.reports_to = m.employee_id