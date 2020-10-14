select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employee e
inner join 
salaries s on s.emp_no = e.emp_no;


select first_name, last_name, hire_date 
from employee
where hire_date like "1986%";


select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from department_manager dm
inner join departments d
on dm.dept_no = d.dept_no
inner join employee e 
on dm.emp_no = e.emp_no;


select de.emp_no, e.last_name, e.first_name, d.dept_name
from department_employee de
inner join employee e
on de.emp_no = e.emp_no
inner join departments d
on de.dept_no = d.dept_no;


select first_name, last_name, sex
from employee
where first_name = "Hercules" 
and last_name like "B%";


select de.emp_no, e.last_name, e.first_name, d.dept_name
from department_employee de
inner join departments d
on de.dept_no = d.dept_no 
inner join employee e
on de.emp_no = e.emp_no 
where d.dept_name = "Sales"; 


select de.emp_no, e.last_name, e.first_name, d.dept_name
from department_employee de
inner join departments d
on de.dept_no = d.dept_no 
inner join employee e
on de.emp_no = e.emp_no 
where d.dept_name = "Sales" or d.dept_name = "Development";


select last_name, count(emp_no) as frequency
from employee
group by last_name
order by frequency desc;