31. select * from Employee  order by  salary asc
emp_id	name	age	salary	department_id	hire_date
4	Alice Blue	25	45000.0	3	2021-03-22
8	Frank White	32	48000.0	null	2021-07-10
1	John Doe	28	50000.0	1	2020-01-15
5	Charlie P.	29	50000.0	2	2019-12-01
10	Hannah Lee	30	53000.0	4	2020-02-25
7	Eve Black	40	55000.0	3	2021-08-30
2	Jane Smith	34	60000.0	2	2019-07-23
9	Grace Kelly	27	65000.0	1	2018-11-13
6	David Green	38	70000.0	4	2022-05-18
3	Bob Brown	45	80000.0	1	2018-02-12


32.select * from Employee  order by  age desc
emp_id	name	age	salary	department_id	hire_date
3	Bob Brown	45	80000.0	1	2018-02-12
7	Eve Black	40	55000.0	3	2021-08-30
6	David Green	38	70000.0	4	2022-05-18
2	Jane Smith	34	60000.0	2	2019-07-23
8	Frank White	32	48000.0	null	2021-07-10
10	Hannah Lee	30	53000.0	4	2020-02-25
5	Charlie P.	29	50000.0	2	2019-12-01
1	John Doe	28	50000.0	1	2020-01-15
9	Grace Kelly	27	65000.0	1	2018-11-13
4	Alice Blue	25	45000.0	3	2021-03-22


33.select * from Employee  order by  hire_date asc
emp_id	name	age	salary	department_id	hire_date
3	Bob Brown	45	80000.0	1	2018-02-12
9	Grace Kelly	27	65000.0	1	2018-11-13
2	Jane Smith	34	60000.0	2	2019-07-23
5	Charlie P.	29	50000.0	2	2019-12-01
1	John Doe	28	50000.0	1	2020-01-15
10	Hannah Lee	30	53000.0	4	2020-02-25
4	Alice Blue	25	45000.0	3	2021-03-22
8	Frank White	32	48000.0	null	2021-07-10
7	Eve Black	40	55000.0	3	2021-08-30
6	David Green	38	70000.0	4	2022-05-18

34.select * from Employee order by department_id ,salary
emp_id	name	age	salary	department_id	hire_date
8	Frank White	32	48000.0	null	2021-07-10
1	John Doe	28	50000.0	1	2020-01-15
9	Grace Kelly	27	65000.0	1	2018-11-13
3	Bob Brown	45	80000.0	1	2018-02-12
5	Charlie P.	29	50000.0	2	2019-12-01
2	Jane Smith	34	60000.0	2	2019-07-23
4	Alice Blue	25	45000.0	3	2021-03-22
7	Eve Black	40	55000.0	3	2021-08-30
10	Hannah Lee	30	53000.0	4	2020-02-25

35.select department_id ,sum(salary) as total_salaries from Employee group by department_id order by total_salaries
department_id	total_salaries
null	48000.0
3	100000.0
2	110000.0
4	123000.0
1	195000.0

36.select e.name ,d.name from Employee e join Department d on e.department_id=d.department_id 
name	name
John Doe	IT
Bob Brown	IT
Grace Kelly	IT
Jane Smith	HR
Charlie P.	HR
Alice Blue	Finance
Eve Black	Finance
David Green	Marketing
Hannah Lee	Marketing

37.select p.name ,d.name from Project p join Department d on p.department_id=d.department_id 
name	name
Project Alpha	IT
Project Gamma	IT
Project Theta	IT
Project Beta	HR
Project Delta	Finance
Project Eta	Finance
Project Epsilon	Marketing
Project Zeta	Marketing


38.select e.name as emp_name ,p.name as project_name from Employee e  join Project p on e.department_id=p.department_id 
emp_name	project_name
John Doe	Project Alpha
Bob Brown	Project Alpha
Grace Kelly	Project Alpha
Jane Smith	Project Beta
Charlie P.	Project Beta
John Doe	Project Gamma
Bob Brown	Project Gamma
Grace Kelly	Project Gamma
Alice Blue	Project Delta
Eve Black	Project Delta
David Green	Project Epsilon
Hannah Lee	Project Epsilon
David Green	Project Zeta
Hannah Lee	Project Zeta
Alice Blue	Project Eta
Eve Black	Project Eta
John Doe	Project Theta
Bob Brown	Project Theta
Grace Kelly	Project Theta


39.SELECT e.name AS employee_name, d.name AS department_name FROM Employee e LEFT JOIN Department d ON e.department_id = d.department_id
employee_name	department_name
John Doe	IT
Bob Brown	IT
Grace Kelly	IT
Jane Smith	HR
Charlie P.	HR
Alice Blue	Finance
Eve Black	Finance
David Green	Marketing
Hannah Lee	Marketing
Frank White	null


40.SELECT e.name AS employee_name, d.name AS department_name FROM Employee e right JOIN Department d ON e.department_id = d.department_id
employee_name	department_name
John Doe	IT
Bob Brown	IT
Grace Kelly	IT
Jane Smith	HR
Charlie P.	HR
Alice Blue	Finance
Eve Black	Finance
David Green	Marketing
Hannah Lee	Marketing

41.SELECT e.name FROM Employee e LEFT JOIN Project p ON e.department_id = p.department_id WHERE p.project_id IS NULL
name
Frank White

42.SELECT e.name, COUNT(p.project_id) AS total_projects FROM Employee e LEFT JOIN Project p ON e.department_id = p.department_id GROUP BY e.name
name	total_projects
Alice Blue	2
Bob Brown	3
Charlie P.	1
David Green	2
Eve Black	2
Frank White	0
Grace Kelly	3
Hannah Lee	2
Jane Smith	1
John Doe	3

43.SELECT d.name FROM Department d LEFT JOIN Employee e ON d.department_id = e.department_id WHERE e.emp_id IS NULL
name
There are no results to be displayed.

44.SELECT name FROM Employee WHERE department_id = (SELECT department_id FROM Employee WHERE name = 'John Doe') AND name <> 'John Doe';

name
Bob Brown
Grace Kelly

45.SELECT d.name FROM Department d JOIN Employee e ON d.department_id = e.department_id GROUP BY d.name ORDER BY AVG(e.salary) DESC LIMIT 1
name
IT

