/* 
	a 1a questão está em um arquivo .php no github
*/


/* 
	2a questão:
*/
select user.user_name, user.user_city, user.user_country, orders.*
from user
left join
orders on orders.order_user_id = user.user_id
where user_id in ('1', '3', '5')
order by user_name;

/* 
	3a questão: Mudei pra country onde estava city na questão pq n fazia sentido
*/
update user set user_country = 'Canada' WHERE user_id = '4';

/* 
	4a questão:
*/
select user.user_country, sum(orders.order_total) as total_value
from user
left join orders on user.user_id = orders.order_user_id
group by user.user_country;	

/* 
	5a questão:
*/
select extract(month from order_date) as month, sum(order_total) as total_value
from orders
group by month;
