select 
	first_name , 
    last_name ,
    state ,
    (state + 10) * 100 as 'new column'
from customers