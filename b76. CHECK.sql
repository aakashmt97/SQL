/*
CREATE TABLE employees
(	emp_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birthdate DATE CHECK (birthdate > '1980-01-01'),
	hire_date DATE CHECK (hire_date > birthdate),
 	salary INTEGER CHECK (salary > 10000)
);
*/

/*
INSERT INTO employees (first_name, last_name, birthdate, hire_date, salary)
VALUES 
('Jose', 'Portilla', '1982-10-13', '2007-02-20', 25000),
('Martin', 'Luthar', '1988-06-09', '2011-10-03', 100000);
*/

SELECT * FROM employees
