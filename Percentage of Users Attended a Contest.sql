select contest_id,round(count(user_id)*100/(select count(*) from users),2) as "Percentage" from Register 
group by contest_id
order by "Percentage" desc,contest_id asc;