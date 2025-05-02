select e1.name as "Employee" from employee e1 where e1.salary >(select salary from employee where id=e1.managerId);
