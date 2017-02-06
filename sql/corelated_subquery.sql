-- corelated subquery

--문제] 각 부서별로 최고 급여를 받고 있는 직원의 이름과 급여 출력 

-- corelated subquery
 select first_name, salary
   from employees outter 	
 	 where salary = ( select max(salary)
                   	  from employees
						where department_id = outter.department_id); 	  
  
-- multi row subquery 									
 select first_name, salary
   from employees
 	 where (department_id, salary) in (  select department_id, max(salary)
                                  	      from employees
                                	     group by department_id);

		 
-- JOIN 으로 해결
 select rownum, a.first_name, a.salary  
   from employees a,
		(  select department_id, max(salary) as max_salary
             from employees
         	group by department_id) b
 	 where a.department_id = b.department_id
     and a.salary = b.max_salary;