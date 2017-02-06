--문제 1.
select first_name || ' ' || last_name as "이름",
	   salary as "월급",
	   phone_number as "전화번호"
	   from employees order by hire_date asc;
	 
--문제2.
select job_title, max_salary from jobs order by max_salary desc;

--문제3.
select count(*) || '명' as "매니저가 없는 직원 수" from employees where manager_id is null;

--문제4.
select job_title, max_salary from jobs order by job_title desc;

--문제5.
select count(*) || '개' as "총 부서 수" from departments;

--문제6.
select department_name from departments order by length(department_name) desc;

--문제7.
select count(*) || '개' as "매니저가 없는 부서 수" from departments where manager_id is null;

--문제8.
select upper(country_name) as "나라 이름" from countries order by country_name asc;

--문제9.
select region_name from regions order by length(region_name) asc;

--문제10.
select distinct lower(city) as "도시 이름" from locations order by lower(city) asc;