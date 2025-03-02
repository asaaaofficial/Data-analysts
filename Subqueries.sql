 -- Subqueries
SELECT * 
FROM parks_and_recreation.employee_demographics
WHERE employee_id IN 
		(SELECT employee_id
        FROM parks_and_recreation.employee_salary
        WHERE dept_id = 1);
        
SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
;
        
SELECT gender, AVG('MAX(age)')
FROM 
(SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender) AS Agg_table;

SELECT AVG(max_age)
FROM
(SELECT gender,
AVG(age) AS avg_age, 
MAX(age) AS max_age, 
MIN(age) AS min_age, 
COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender) AS Agg_table;