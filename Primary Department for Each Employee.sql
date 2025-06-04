select employee_id,department_id from employee e where primary_flag='Y' or 
(select count(*) from employee where employee_id=e.employee_id)=1;