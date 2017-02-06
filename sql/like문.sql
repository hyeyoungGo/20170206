--Like

select first_name from employees;

select first_name
	from employees
	where first_name like'%he%';
	
select first_name
	from employees
	where first_name like'__a_';

select first_name
	from employees
	where first_name like '___a';
	
select commission_pct
	from empolyees
	where 2 = 10 AND null;