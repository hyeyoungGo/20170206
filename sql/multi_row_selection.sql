-- muti-row selection
select * from employees;

--문제1. job_id가 'IT_PROG'인 직원들의 월급보다 많은 월급을 받는 직원들의 이름과 월급 출력
select first_name,
       salary
  from employees
 where salary >ALL (select salary 
                      from employees 
					     where job_id='IT_PROG');
 
--별해1. single row subquery로 해결
select first_name,
       salary
  from employees
 	where salary > (select MAX(salary) 
                 	  from employees 
				 		 where job_id='IT_PROG');
 
   	    
--문제2. job_id가 'IT_PROG'인 직원들의 월급과 같은 월급을 받는 직원들의 이름과 월급 출력
select first_name,
       salary
  from employees
 	where salary =any (select salary 
                     	 from employees 
				    	 where job_id='IT_PROG');


--별해2.
select first_name,
       salary
  from employees
	 where salary in (select salary 
                      from employees 
					     where job_id='IT_PROG');