-- 문자열 함수

select lower ('Database Management System')
	from dual;

select first_name, upper(last_name)
	from employees;

select initcap('database management system')
	from dual;
	
select concat(concat(first_name, ' '),last_name)
	from employees;

select substr('Database Management System', 2, 4)
	from dual;

select length('Database Management System')
	from dual;

select instr('Database Management System', 'Sys')
	from dual;

-- *를 왼쪽 정렬
select employee_id,
	   lpad(salary, 10, '*')
	from employees;
	
-- *를 오른쪽 정렬
select employee_id,
	   rpad(salary, 10, '*')
	from employees;
	
select trim('#' from '##Data###base##') ||
	   '---'
	from dual;

-- LTRIM(s,c) 문자열 왼쪽 c문자열 제거
select '---' ||
	   ltrim('    Data   base      ', ' ') ||
	   '---'
	from dual;
	
-- RTRIM(s,c) 문자열 오른쪽 c문자열 제거
select '---' ||
	   rtrim('    Data   base      ', ' ') ||
	   '---'
	from dual;

-- REPLACE(s,p,r) 문자열 치환, S속의 p문자열을 r로 치환
select replace('Database Management System', 'ab', 'A')
	from dual;