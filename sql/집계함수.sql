-- 집계함수
select job_id from employees;

select avg(salary) from employees;

select avg(salary)
	   from employees
	   where job_id = 'AC_ACCOUNT';

-- 오류 (집계함수를 사용하면 다른 칼럼들은 select절에 올 수 없다.)
select job_id, avg(salary)
	   from employees
	   where job_id = 'AC_ACCOUNT';

-- 단, group by절에 참여하고 있는 칼럼은 올 수 있다.
select job_id, avg(salary)
	   from employees
	   group by job_id;

-- order by절은 최종 임시 테이블에 있는 컬럼에 대해서만 할 수 있다.
select job_id, avg(salary) 
	   from employees
	   group by job_id
	   order by job_id desc;

select job_id, avg(salary) 
	   from employees
	   where job_id != 'AC_ACCOUNT'
	   group by job_id
	   order by job_id desc;

-- 최종 결과 임시 테이블에 대한 조건은 having절을 사용한다.
select job_id, avg(salary)
	from employees
	where job_id != 'AC_ACCOUNT'
	group by job_id
	having avg(salary) > 2000
	order by avg(salary) desc;
