-- join

select a.FIRST_NAME, a.LAST_NAME, b.DEPARTMENT_NAME
	   from employees a, departments b
	   where a.DEPARTMENT_ID = b.DEPARTMENT_ID -- join 조건 (n-1)
	   and b.DEPARTMENT_NAME like 'P%';  --row 선택 조건
		 
-- Inner Join(Equi Join)

select a.first_namem, b.department_name
	   from employees a, employees b
	   where a.MANAGER_ID = b.EMPLOYEE_ID; 
	  
--Outter Join
select * from employees a, departments b
		 where a.DEPARTMENT_ID = b.DEPARTMENT_ID;
		 
--부서가 있는 직원
select count(*)
	from employees a,
		 departments b
	where a.DEPARTMENT_ID = b.DEPARTMENT_ID;

--부서가 없는 직원 포함
select count(*)
	from employees a,
		 departments b
	where a.DEPARTMENT_ID (+)= b.DEPARTMENT_ID;
	

select a.FIRST_NAME, b.DEPARTMENT_NAME
	from employees a,
		 departments b
	where a.DEPARTMENT_ID (+)= b.DEPARTMENT_ID;

select nvl(a.FIRST_NAME, '소속 직원이 없음'), b.DEPARTMENT_NAME
	from employees a,
		 departments b
	where a.DEPARTMENT_ID (+)= b.DEPARTMENT_ID;

select department_id from employees;

select a.FIRST_NAME, nvl(b.DEPARTMENT_NAME, '부서가 없음')
	from employees a,
		 departments b
	where b.DEPARTMENT_ID (+)= a.DEPARTMENT_ID;