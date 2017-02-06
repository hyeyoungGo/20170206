-- 문제1 (56명)
select count(*)
  from employees
 where salary < ( select avg(salary) from employees );

 
--문제2 (11명)
  select employee_id as "사번",
         last_name as "성",
	     salary as "급여"
    from employees
   where (department_id, salary) in 
   		 (   select department_id,
                    max(salary)
		       from employees
		   group by department_id )  	    
order by salary desc;

--[문제2-별해1]
  select employee_id as "사번",
         last_name as "성",
	     salary as "급여"
    from employees a
   where salary =  
   		 (select max(salary)
		    from employees
		   where department_id = a.department_id)  	    
order by salary desc;

--[문제2-별해2]
  select a.employee_id as "사번",
         a.last_name as "성",
	     a.salary as "급여"
    from employees a,
		 (   select department_id,
                    max(salary) as max_salary
		       from employees
		   group by department_id ) b	
   where a.department_id = b.department_id
     and a.salary = b.max_salary
order by a.salary desc;


--문제3(19명)
 select a.job_title as "업무",
        b.sum_salary as "급여총합"
   from jobs a,
        (  select job_id, SUM(salary) as sum_salary
             from employees
         group by job_id ) b
   where a.job_id = b.job_id		
order by b.sum_salary desc;
  
--[문제3-별해] JOIN 으로만 해결
  select a.job_title as "업무",
         SUM(b.salary) as "급여총합"
    from jobs a,
         employees b
   where a.job_id=b.job_id
group by a.job_title
order by SUM(b.salary) desc;
  	   

-- 문제4 (38명)
select a.employee_id as "사번", 
       a.last_name as "성", 
	   a.salary as "급여"
  from employees a,
       (  select department_id, avg(salary) as avg_salary
	        from employees
		group by department_id ) b  
 where a.department_id = b.department_id
   and a.salary > b.avg_salary;
