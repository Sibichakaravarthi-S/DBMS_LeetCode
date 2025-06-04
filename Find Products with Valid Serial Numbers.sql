select product_id,product_name,description from products where Regexp_like(description,'(^|[^A-Z0-9])SN[0-9]{4}-[0-9]{4}([^0-9]|$)')
order by product_id;