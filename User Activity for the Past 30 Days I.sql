select TO_CHAR(activity_date,'YYYY-MM-DD') as "day",count(distinct(User_id))  as "active_users" from Activity 
where TO_CHAR(activity_date,'YYYY-MM-DD')> DATE '2019-06-27' and 
      TO_CHAR(activity_date,'YYYY-MM-DD')<= DATE '2019-07-27'
group by activity_date
order by activity_date;