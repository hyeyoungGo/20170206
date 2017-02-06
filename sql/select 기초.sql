select employee_id, first_name, last_name
	from employees;

select first_name as "이름",
	   last_name as "성"
	from employees;

select first_name || ' ' || last_name as "이름"
	from employees;

select first_name || ' ' ||
	   last_name as "이름",
	   salary*12 as "연봉"
	from employees;