--문제1. 가장 늦게 입사한 직원(first_name last_name)의 이름과
--		연봉(salary)과 근무하는 부서 이름(department_name)은:var1
	   
SELECT e.first_name || ' ' || e.last_name as "이름",
	   e.salary as "연봉",
	   d.department_name as "부서 이름"
	   	FROM employees e,
			 departments d,
         (SELECT MAX(hire_date) max_hire
		 	FROM employees) a
	WHERE    e.hire_date = a.max_hire
	AND e.DEPARTMENT_ID = d.DEPARTMENT_ID;
	   	   
--문제2. 자신의 부서 평균 급여보다 연봉이 많은 사원의
--		사번(employee_id), 성(last_name)과 연봉(salary)을 조회하세요

select a.employee_id as "사번", a.last_name as "성", a.salary as "연봉"
		from employees a,
			 (SELECT department_id, avg(salary) as avg_salary
				from employees
				group by department_id) b
		where salary > avg_salary
		and a.DEPARTMENT_ID = b.DEPARTMENT_ID;

SELECT department_id, avg(salary) as avg_salary
	from employees
	group by department_id;

--문제3. 평균연봉(salary)이 가장 높은 부서 사원들의
--		사번(employee_id), 이름(firt_name), 성(last_name)과  업무(job), 연봉(salary)을 조회하시오.
select e.employee_id as "사번",
	   e.first_name || ' ' || e.last_name as "이름",
	   j.job_title as "업무명",
	   e.salary as "연봉"
		from employees e,
			 jobs j,
			 (SELECT department_id, avg(salary) as avg_salary
				from employees
				where rownum = 1
				group by department_id
				order by avg(salary) desc) d
		--where Max(avg_salary)= e.SALARY
		where d.DEPARTMENT_ID = e.DEPARTMENT_ID
		and j.JOB_ID = e.JOB_ID;

SELECT department_id, avg(salary) as avg_salary
	from employees
	where rownum = 1
	group by department_id
	order by avg(salary) desc;

--문제4. 평균 연봉(salary)이 가장 높은 부서는:var1

SELECT department_id, avg(salary) as avg_salary
	from employees
	where rownum = 1
	group by department_id
	order by avg(salary) desc;

--문제5. 평균 연봉(salary)이 가장 높은 지역은:var1

SELECT r.REGION_ID, r.REGION_NAME, avg(e.salary) as avg_salary
	from employees e, regions r, departments d, countries c, LOCATIONS l
	where rownum = 1
	and r.REGION_ID = c.REGION_ID
	and c.COUNTRY_ID = l.COUNTRY_ID
	and l.LOCATION_ID = d.LOCATION_ID
	and d.DEPARTMENT_ID = e.DEPARTMENT_ID
	group by r.REGION_ID,  r.REGION_NAME
	order by avg_salary desc;

--문제6. 평균 연봉(salary)이 가장 높은 업무는:var1
SELECT e.job_id, j.job_title, avg(salary) as avg_salary
	from employees e, jobs j
	where rownum = 1
	group by e.job_id,  j.job_title
	order by avg(salary) desc;