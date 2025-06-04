select user_id,UPPER(SUBSTR(name,1,1))||LOWER(SUBSTR(name,2)) as "name" from users 
order by user_id;