--문제1.
select a.employee_id,
	   a.first_name,
	   b.department_name,
	   c.first_name
		from employees a,
			 departments b,
			 employees c
		where a.DEPARTMENT_ID = b.DEPARTMENT_ID
		and a.MANAGER_ID = c.EMPLOYEE_ID;

--문제2.
select a.region_name, b.country_name
	from regions a,
		 countries b
	where a.REGION_ID = b.REGION_ID
	order by region_name desc,
			 country_name desc;
			 
--문제3.
select d.department_id as "부서번호",
	   d.department_name as "부서이름",
	   m.first_name as "매니저의 이름",
	   loc.city as "위치한 도시",
	   coun.country_name as "위치한 나라",
	   regn.region_name as "위치한 지역"
	   	from departments d,
			 employees m,
			 locations loc,
			 countries coun,
			 regions regn
		where m.MANAGER_ID = d.MANAGER_ID
		and d.LOCATION_ID = loc.LOCATION_ID
		and loc.COUNTRY_ID = coun.COUNTRY_ID
		and coun.REGION_ID = regn.REGION_ID;
		
--문제4.
select a.employee_id as "사번",
	   a.first_name||' '||a.last_name as "이름"
	from employees a, jobs b, job_history c
	where a.EMPLOYEE_ID = c.EMPLOYEE_ID
	and b.JOB_ID = c.JOB_ID
	and b.JOB_TITLE = 'Public Accountant';

--문제5.
select nvl(to_char(a.employee_id),'소속 직원 없음'),
	   a.first_name,
	   a.last_name,
	   b.DEPARTMENT_ID
			from employees a,
		 		 departments b
			where a.DEPARTMENT_ID (+)= b.DEPARTMENT_ID
			order by a.LAST_NAME asc;

select a.employee_id,
	   a.first_name,
	   a.last_name,
	   nvl(to_char(a.employee_id),'소속 부서 없음')
			from employees a,
		 		 departments b 
			where b.DEPARTMENT_ID (+)= a.DEPARTMENT_ID
			order by a.LAST_NAME asc;

select nvl(to_char(a.employee_id),'소속 직원 없음'),
	   a.first_name,
	   a.last_name,
	   nvl(to_char(a.employee_id),'소속 부서 없음')
			from employees a
		 	full join departments b
			on b.DEPARTMENT_ID = a.DEPARTMENT_ID
			order by a.LAST_NAME asc;

--문제6.
select a.employee_id as "사번",
	   a.manager_id as "매니저 아이디",
	   a.last_name as "성",
	   a.hire_date as "채용일"
		from employees a,
			 employees b
		where a.MANAGER_ID = b.EMPLOYEE_ID
		and a.HIRE_DATE < b.HIRE_DATE;