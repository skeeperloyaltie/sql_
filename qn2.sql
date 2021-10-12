/* Question Two*/
select * from manager
 where (select * from employees 
 where manager.manager_ID = employees.manager_ID and manager.manager_ID = employees.NULL)

 /* Question Four*/
select e.employee_id, e.last_name from employees
UNION
select  d.department_id, d.department_name from departments where e.department_id = d.department_id;

/* Question five */
select country_name from countries UNION
select region_name from REGIONS where 
region_name = `Europe`,`Asia`;