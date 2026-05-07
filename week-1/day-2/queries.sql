16.select sum(salary) as total_salary from Employee
total_salary
410000.0

17.select avg(salary) as total_salary from Employee
total_salary
58571.428571

18.select min(salary) as total_salary from Employee
total_salary
45000.0

19.SELECT department_id, COUNT(*) AS total_employees FROM Employee GROUP BY department_id;
department_id	total_employees
1	2
2	2
3	2
4	1


20.SELECT department_id, avg(salary) AS avg_salary FROM Employee GROUP BY department_id;
department_id	avg_salary
1	65000.0
2	55000.0
3	50000.0
4	70000.0

21.SELECT department_id, sum(salary) AS total_salary FROM Employee GROUP BY department_id;
department_id	total_salary
1	130000.0
2	110000.0
3	100000.0
4	70000.0

22.SELECT department_id, avg(age) AS avg_age FROM Employee GROUP BY department_id;
department_id	avg_age
1	36.5
2	31.5
3	32.5
4	38.0

23.select hire_date, count(*) as count_hired  from Employee group by hire_date
hire_date	count_hired
2018-02-12	1
2019-07-23	1
2019-12-01	1
2020-01-15	1
2021-03-22	1
2021-08-30	1
2022-05-18	1


24.select department_id, max(salary) as higehst_salary  from Employee group by department_id
department_id	higehst_salary
1	80000.0
2	60000.0
3	55000.0
4	70000.0

25.SELECT department_id FROM Employee GROUP BY department_id ORDER BY AVG(salary) DESC LIMIT 1
department_id
4

26.SELECT department_id FROM Employee GROUP BY department_id having count(*)>2

department_id
There are no results to be displayed.

27.SELECT department_id FROM Employee GROUP BY department_id having avg(salary) >55000
department_id
1
4

28.SELECT hire_date FROM Employee GROUP BY hire_date HAVING COUNT(*) > 1

hire_date
There are no results to be displayed.

29.SELECT department_id FROM Employee GROUP BY department_id HAVING SUM(salary) < 100000

department_id
4

30.SELECT department_id FROM Employee GROUP BY department_id having max(salary)>75000;
department_id
1


