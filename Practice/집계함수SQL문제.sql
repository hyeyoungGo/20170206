--문제1.
select max_salary as "최고임금",
	   min_salary as "최저임금",
	  (max_salary)-(min_salary) as "최고임금 - 최저임금"
		from jobs;

--문제2.
select to_char(max(hire_date), 'yyyy"년" mm"월" dd"일"') as "입사일"
	   from employees;

--문제3.
select department_id as "부서ID",
	   avg(salary) as "평균 임금",
	   max(salary) as "최고 임금",
	   min(salary) as "최저 임금"
	   from employees
	   group by department_id
	   order by avg(salary) desc,
	   			max(salary) desc,
				min(salary) desc;
				
--문제4.
select job_id as "업무ID",
	   avg(salary) as "평균 임금",
	   max(salary) as "최고 임금",
	   min(salary) as "최저 임금"
	   from employees
	   group by job_id
	   order by avg(salary) desc,
	   			max(salary) desc,
				min(salary) desc;

--문제5.
select to_char(min(hire_date), 'yyyy"년" mm"월" dd"일"') as "입사일"
	   from employees;

--문제6.
select department_id as "부서ID",
	   avg(salary) as "평균 임금",
	   min(salary) as "최저 임금",
	   avg(salary) - min(salary) as "평균임금 - 최저임금"
	   from employees
	   group by department_id
	   having avg(salary) - min(salary) < 2000
	   order by avg(salary) - min(salary) desc;
	   
--문제7.
select job_id as "업무ID",
	   max(salary)-min(salary) as "최고임금 - 최저임금"
	   from employees
	   group by job_id
	   order by max(salary)-min(salary) desc;

select job_title from jobs where job_id='SA_REP';
	   
select max(salary), min(salary) from employees;
select max_salary, min_salary from jobs;