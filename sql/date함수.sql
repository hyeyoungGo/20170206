-- Date
select hire_date from employees;

select value from nls_session_paramters
	where parameter = 'NLS_DATE_FORMAT';
select value FROM nls_session_parameters WHERE parameter = 'NLS_DATE_FORMAT'; 

-- Date 함수
select add_months(sysdate, 1) from dual;
select add_months('16/02/03', 2) from dual;

select last_day(sysdate) from dual;
select last_day('17/12/01') from dual;

select months_between('17/12/01', sysdate)
	from dual;