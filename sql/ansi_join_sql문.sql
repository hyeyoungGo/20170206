--ansi join sql문(1999 syntax)

--natural join 데이터의 칼럼 이름이 같으면 자동으로 조인이 걸린다.
--조인 대상 테이블에 같은 컬럼이 있는경우
select count(*)
		from employees a
		natural join departments b;
--				on a.department_id = b.department_id
--				and a.manager_id = b.manager_id
-- natural join은 위 두문장 생략 가능 
		 
--inner join 표준 SQL문 (equi join 표준SQL문)
select count(*)
		from employees a
		join departments b
		on a.DEPARTMENT_ID = b.DEPARTMENT_ID;
				
select count(*)
		from employees a,
			 departments b
		where a.DEPARTMENT_ID = b.DEPARTMENT_ID;

--outter join 표준 SQL문
--right +는 적게 있는쪽에 right는 더 많은쪽에
select nvl(a.FIRST_NAME,'소속 직원이 없음'), b.DEPARTMENT_NAME
	from employees a
	right join departments b
	on a.DEPARTMENT_ID = b.DEPARTMENT_ID;

--left
select a.FIRST_NAME, nvl(b.DEPARTMENT_NAME, '부서가 없음')
	from employees a
	left join departments b
	on a.DEPARTMENT_ID = b.DEPARTMENT_ID;