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
SELECT country_name, region_name FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
JOIN regions r on c.region_id = r.region_id
ORDER by country_name, region_name DESC
/*5*/
/*6*/
/*7*/
/*8*/
/*9*/
/*10*/