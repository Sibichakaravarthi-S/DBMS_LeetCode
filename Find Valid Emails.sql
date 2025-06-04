select user_id,email from users where regexp_like(email,'^[a-zA-Z0-9_]+@[a-zA-Z]+\.com$')
