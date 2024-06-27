/*1*/
SELECT m.first_name as empleado, m.last_name, department_name, state_province, e.salary,e.first_name as jefe,  e.last_name FROM employees m
JOIN employees e on m.manager_id = e.employee_id 
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id =l.location_id
ORDER by e.salary DESC

/*2*/
UPDATE jobs SET min_salary = (min_salary - ((min_salary * 25) /100))

UPDATE jobs SET max_salary = (max_salary - ((max_salary * 25) /100))

/*3*/
DELETE FROM employees 
WHERE employee_id in (
SELECT employee_id FROM employees e
JOIN jobs j on e.job_id = j.job_id
WHERE salary > max_salary)

/*4*/
