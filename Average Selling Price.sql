select p.product_id, 
    NVL(
        round(sum(u.units*p.price)/NULLIF(sum(u.units),0),2),0
    )
     as average_price from prices p
    left join Unitssold u on p.product_id=u.product_id and u.purchase_date BETWEEN p.start_date and 
    p.end_date
group by p.product_id;