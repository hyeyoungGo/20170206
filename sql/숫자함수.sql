-- 숫자 함수

--ABS(n) 절대값
select abs(-1000) from dual;

--CEIL(n) n 보다 크거나 같은 최소 정수 
select ceil(3.111) from dual;

--FLOOR(n) n 보다 작거나 같은 최대 정수
select floor(3.9999) from dual;

--MOD(m,n) 나머지
select mod(9999, 6) from dual;

--POWER(m,n) m의 n승
select power(2,10) from dual;

--ROUND(m,n) 소수점아래 n자리까지 반올림
select round(3.3364, 2),
	   round(3.3344, 2)
	from dual;

--TRUNC(m,n) 소수점아래 n자리미만 버림
select trunc(3.3864, 1) from dual;

--SIGN(n) 부호 (1, 0, -1)
select sign(-99999) from dual;
select sign(99999) from dual;
select sign(0) from dual;