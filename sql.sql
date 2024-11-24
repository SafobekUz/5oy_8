-- 1
CREATE TABLE employees (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE,
    department_id INT
);

INSERT INTO employees (id, first_name, last_name, position, salary, hire_date, department_id) VALUES
(1, 'Ali', 'Karimov', 'Manager', 3000, '2020-03-15', 1),
(2, 'Nodira', 'Toirova', 'Developer', 2500, '2021-05-10', 2),
(3, 'Shoxruh', 'Abdullayev', 'Designer', 2200, '2022-01-22', 3),
(4, 'Zarina', 'Abdullayeva', 'HR Specialist', 1800, '2019-11-11', 1),
(5, 'Jasur', 'Aliyev', 'Developer', 2400, '2023-02-01', 2);

-- 2
CREATE TABLE departments (
    id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departments (id, department_name) VALUES
(1, 'Administration'),
(2, 'IT'),
(3, 'Design');

-- 3
CREATE TABLE projects (
    id INT PRIMARY KEY,
    project_name VARCHAR(50),
    start_date DATE,
    end_date DATE,
    budget DECIMAL(15, 2)
);

INSERT INTO projects (id, project_name, start_date, end_date, budget) VALUES
(1, 'New Website', '2023-01-10', '2023-06-30', 50000),
(2, 'Mobile App', '2022-08-15', '2023-03-20', 30000),
(3, 'CRM System', '2024-02-01', NULL, 60000);


-- 1=
SELECT CONCAT(first_name, ' ', last_name) AS "Full Name"
FROM employees;

-- 2=
SELECT *
FROM employees
ORDER BY salary DESC;

-- 3
SELECT *
FROM employees
WHERE salary > 2500;

-- 4
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- 5
SELECT *
FROM employees
WHERE salary IN (2400, 3000);

-- 6
SELECT *
FROM employees
WHERE salary BETWEEN 2000 AND 3000;

-- 7
SELECT *
FROM employees
WHERE first_name LIKE '%a%';

-- 8
SELECT *
FROM projects
WHERE end_date IS NULL;

-- 9
SELECT department_id, AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;

