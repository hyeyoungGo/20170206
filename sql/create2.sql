-- create table

CREATE TABLE account_employees
AS
   (SELECT *
      FROM employees
     WHERE job_id = 'FI_ACCOUNT');

SELECT * FROM account_employees;