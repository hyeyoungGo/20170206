-- single row subquery

select first_name, 
       salary 
  from employees 
 	where salary > (select avg(salary) from employees);
 
select first_name, 
       salary 
  from employees 
	 where salary = (select avg(salary) from employees);
 
select first_name, 
       salary 
  from employees 
 	where salary >= (select avg(salary) from employees);  
 
select first_name, 
       salary 
  from employees 
 	where salary <> (select avg(salary) from employees);
 
 select first_name, 
       salary 
  from employees 
	 where salary < (select avg(salary) from employees); 
 
-- 에러 >, <, >=, <=, <>, != 연산자 뒤의 서브쿼리는 결과가 하나의 row만 나와야 한다.  
 select first_name, 
       salary 
  from employees 
 	where salary < (  select avg(salary) 
 				    	 from employees 
					  group by job_id);
select avg(salary) 
	from employees 
	group by job_id;