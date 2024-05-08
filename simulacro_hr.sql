/*1*/
SELECT department_name FROM departments
ORDER by department_name ASC
/*2*/
SELECT DISTINCT salary FROM employees
ORDER by salary DESC
/*3*/
SELECT job_title, min_salary, max_salary FROM jobs
WHERE job_title like '%Manager%'
ORDER by max_salary DESC
/*4*/
SELECT country_name, region_name FROM countries c
JOIN regions r on c.region_id = r.region_id
ORDER by region_name 
/*5*/
SELECT first_name, last_name, department_name, salary FROM employees e
JOIN departments d on e.department_id = d.department_id
WHERE salary >= 9000 AND salary <=17000
/*6*/
SELECT count(c.country_name), region_name FROM countries c
JOIN regions r on r.region_id = c.region_id
GROUP by r.region_name
HAVING count(c.country_name) <= 5
/*7*/
SELECT min(hire_date) as mas_vieja, max(hire_date) as mas_actual FROM employees
ORDER by mas_actual DESC
/*8*/
SELECT e.first_name, e.last_name, count(d.first_name) as hijo_nombre FROM employees e
JOIN dependents d on e.employee_id = d.employee_id
GROUP by e.employee_id
ORDER by e.first_name DESC
LIMIT 5
/*9*/
SELECT first_name, salary FROM employees e
ORDER by salary DESC
LIMIT 1 OFFSET 2
/*10*/