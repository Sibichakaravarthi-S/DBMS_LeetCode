select project_id,round(sum(e.experience_years)/count(e.employee_id),2) as "average_years" from project join employee e on project.employee_id=e.employee_id group by project_id;
