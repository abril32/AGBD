/*1*/
SELECT job_title as trabajos, count(first_name) as cant_empleados,sum(salary) as salario_total FROM employees e
JOIN jobs j on e.job_id = j.job_id
GROUP by j.job_id

/*2*/
SELECT first_name,last_name,job_title,department_name FROM employees e
JOIN jobs j on e.job_id = j.job_id
JOIN departments d on e.department_id = d.department_id
ORDER by last_name ASC
/*3*/
UPDATE employees SET phone_number = "303.404.505"
WHERE phone_number is NULL

SELECT employee_id,first_name,last_name,email,phone_number, department_id FROM employees

/*4*/
UPDATE employees SET salary = ((SELECT salary + ((salary * 35)/100) as salary FROM employees e  
JOIN jobs j on e.job_id = j.job_id
WHERE salary < 8000 and job_title = "Accountant" or job_title = "Programmer"))

/*5*/
INSERT INTO locations (city,country_id,street_address)
VALUES ("Seattle","US","2004 Charade Rd")

INSERT INTO departments (department_name,location_id)
VALUES("Consultants",(SELECT department_id FROM departments d
JOIN locations l on d.location_id = l.location_id
WHERE street_address = "2004 Charade Rd"));

INSERT INTO jobs (job_title,max_salary,min_salary)
VALUES ("Consultant",5000,3000);

INSERT INTO employees (first_name,last_name,email,phone_number,hire_date,salary,manager_id,job_id,department_id)
VALUES ("Raul","Lopez","rlopez@gmail.com","1.231.231.122","2024-06-27","5000",100,20,12),
	   ("Andres","Gonzales","agonzales@gmail.com","1.231.231.122","2024-06-27","5000",100,20,12),
	   ("Laura","Fernandez","lfernandez@gmail.com","1.231.231.122","2024-06-27","5000",100,20,12);

/*6*/
DELETE FROM employees
WHERE department_id = (SELECT department_id FROM departments
WHERE department_id = 2)

DELETE FROM departments
WHERE location_id = (SELECT department_id FROM departments d
JOIN locations l on d.location_id = l.location_id
JOIN countries c on l.country_id = c.country_id 
WHERE c.country_id = "CA")

DELETE FROM locations
WHERE country_id = (SELECT country_id FROM countries
WHERE country_name like "%canada%")

DELETE FROM countries
WHERE country_name = (SELECT country_name FROM countries
WHERE country_name = "Canada")

/*7*/
