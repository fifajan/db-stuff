-- PostgreSQL query

SELECT * FROM ( SELECT dept_id ,
    (
        SELECT COUNT(emp_id)
        FROM employee
        WHERE employee.dept_id = departments.dept_id
    ) AS emp_conut ,
    (
        SELECT SUM(salary)
        FROM employee
        WHERE employee.dept_id = departments.dept_id 
    ) AS sal_sum FROM departments ) AS sub_q WHERE sub_q.sal_sum IS NOT NULL ORDER BY sub_q.dept_id ;
