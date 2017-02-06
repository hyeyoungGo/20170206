--Top-k =>게시판의 paging 처리

--문> 2002년도 입사한 직원중 가장 월급이 많은 3명의 이름과 월급 출력
select first_name, salary
  from employees
 where hire_date like '02%'
 order by salary desc;
 
select rownum, first_name, salary
  from employees
 where hire_date like '02%'
 order by salary desc;
 
select rownum, a.*
  from (select first_name, salary
  		  from employees
 	     where hire_date like '02%'
      order by salary desc) a
	  where rownum < 4;

--문제점: row 하나씩 출력하면서 rownum이 붙게되므로 where 조건에 맞는 row는 출력이 안되는 문제가 있다	  
select rownum, a.*
  from (select first_name, salary
  		  from employees
 	     where hire_date like '02%'
      order by salary desc) a
	  where 4<=rownum and rownum <=5;
	  
select * 
  from (select rownum as num, a.*
		  from (select first_name, salary
				  from employees
				 where hire_date like '02%'
			  order by salary desc) a)
 where 4<= num and num <=5;

--게시판인 경우
select * 
  from (select rownum as num, a.*
		  from (select first_name, salary
				  from employees
				 where hire_date like '02%'
			  order by salary desc) a)
 where (page-1)*10 + 1 <= num and num <= page*10;
 
 -- Rank 관련 함수
 select EMPLOYEE_ID, first_name, salary, 
  		rank() over(order by salary desc) as rank,
		dense_rank() over(order by salary desc) as d_rank,
		row_number() over(order by salary desc) as row_number,
		rownum as row_num
  from employees;
	 