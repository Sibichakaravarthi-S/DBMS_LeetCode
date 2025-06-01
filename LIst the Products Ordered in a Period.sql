select p.product_name,sum(o.unit) as unit from Products p 
    join orders o on p.product_id=o.product_id 
    where o.order_date>= Date '2020-02-01' and o.order_date <= date '2020-02-29'
group by Product_name
having sum(o.unit)>=100;