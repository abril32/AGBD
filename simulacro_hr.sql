/*1*/
SELECT department_name FROM departments
ORDER by department_name ASC
/*2*/
SELECT DISTINCT salary FROM employees
ORDER by salary DESC
/*3*/
SELECT job_title, min_salary, max_salary FROM jobs
WHERE job_title like '%Manager'
ORDER by max_salary DESC
/*4*/
/*5*/
/*6*/
/*7*/
/*8*/
/*9*/
/*10*/