/*1*/SELECT first_name, last_name, salary FROM employees
WHERE salary <6000
/*2*/SELECT first_name, last_name, department_name, city, state_province FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
/*3*/SELECT e.first_name AS nomJefe, m.first_name AS nombreEmple from employees e 
JOIN employees m on e.employee_id = m.manager_id
ORDER BY nomJefe
/*4*/SELECT e.first_name as empleados, e.last_name as apellidoEmpleados, d.first_name as nomHijos from employees e
join dependents d on e.employee_id = d.employee_id
order by e.first_name ASC
/*5*/SELECT first_name, last_name, job_title, max_salary FROM employees e
JOIN jobs j on e.job_id = j.job_id
ORDER by max_salary DESC
/*6*/SELECT first_name, last_name, department_name, salary FROM employees e
JOIN departments d on e.department_id = d.department_id
ORDER by first_name, department_name ASC
/*7*/SELECT first_name, last_name, state_province FROM employees e
JOIN departments d on e.department_id = e.department_id
JOIN locations l on d.location_id = l.location_id
ORDER by first_name, state_province ASC
/*8*/SELECT first_name, last_name, country_name, region_name FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
JOIN regions r on c.region_id = r.region_id
ORDER by first_name ASC
/*9*/SELECT country_name, region_name FROM employees e
JOIN departments d on e.department_id = d.department_id
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id
JOIN regions r on c.region_id = r.region_id
ORDER by country_name, region_name DESC
/*10*/SELECT first_name, last_name, job_title, min_salary FROM employees e
JOIN jobs j on e.job_id = j.job_id
ORDER by min_salary DESC