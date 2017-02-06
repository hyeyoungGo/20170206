-- order by

select first_name,
	   salary
	from employees
	where salary >1000
	order by salary desc;
	
select first_name,
	   salary
	from employees
	where salary >1000
	order by salary desc, first_name asc;
	
select first_name,
	   hire_date
	from employees
	order by hire_date desc;

-- count
select count(*) from employees;
