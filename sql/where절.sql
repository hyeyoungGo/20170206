-- where절 연습

select first_name, salary
	from employees
	where salary < 20000;

select first_name, salary
	from employees
	where 10000 <= salary and salary <=15000;

select first_name, salary
	from employees
	where salary between 10000 and 15000;

select first_name,
	   manager_id
	from employees
		where manager_id is null;
		
-- null를 포함한 산술 식은 null
select first_name,
	   commission_pct,
	   (salary + salary*commission_pct)
	from employees
	where commission_pct is not null;
	
--nvl:null값에 데이터를 넣어줌
select first_name,
	   (salary + salary*nvl(commission_pct, 0)) 
	   as "이번달 월급"
	from employees;