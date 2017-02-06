-- Date -> 문자열

select to_char(sysdate, 'yyyy-mm-dd hh:mi:ss')
	from dual;
	
select employee_id, hire_date from employees;
	
select employee_id,
	   to_char(hire_date, 'yyyy-mm-dd hh:mi:ss')
	from employees;
	
select employee_id,
	   to_char(hire_date, 'yyyy"년" mm"월" dd"일" hh24"시" mi"분" ss"초"')
	from employees;
	
select employee_id,
	   to_char(hire_date, 'yyyy"년" mm"월" dd"일" hh12"시" mi"분" ss"초"')
	from employees;
	
select employee_id,
	   to_char(hire_date, 'yyyy"년" mm"월" dd"일" ddd"일째 되는날"')
	from employees;

select employee_id,
	   to_char(hire_date, 'RR')
	from employees;

select employee_id,
	   to_char(salary, '99999')
	from employees;
	
select employee_id,
	   to_char(salary, '09999')
	from employees;
	
select employee_id,
	   to_char(salary, '99,999')
	from employees;

select to_char(3.14158921, '9.99') from dual;

select to_char(3.14158921, '9.999') from dual;

select employee_id,
	   to_char(salary, 'FM99999')
	from employees;

select employee_id,
	   to_char(salary, '$99999')
	from employees;

select employee_id,
	   to_char(salary, 'L99999')
	from employees;
	
select to_char(-1000, '99999MI')
	from dual;
select to_char(1000, '99999MI')
	from dual;
	
select to_char(-1000, 'S99999')
	from dual;
select to_char(1000, 'S99999')
	from dual;
select to_char(0, 'S99999')
	from dual;
	
select to_char(-1000, '99999PR')
	from dual;