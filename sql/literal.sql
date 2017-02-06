--literal

select 'Hello World' from dual;
select 10 from dual;
select SYSDATE from dual;

select 'name is ' ||
	   first_name ||
	   ' ' ||
	   last_name
	from employees;

select 'name is ' ||
	   first_name ||
	   ' ' ||
	   last_name as "이름"
	from employees;