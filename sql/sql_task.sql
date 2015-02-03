SELECT dept_id
    ,(
        SELECT COUNT(emp_id)
        FROM employee
        WHERE employee.dept_id = department.dept_id
    ) AS emp_conut
    ,(
        SELECT SUM(salary)
        FROM employee
        WHERE employee.dept_id = department.dept_id 
    ) AS sal_sum
FROM department WHERE sal_sum NOT NULL ORDER BY dept_id
