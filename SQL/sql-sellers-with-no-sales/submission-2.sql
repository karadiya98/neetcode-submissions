
SELECT seller_name 
FROM seller 
WHERE seller_id NOT IN (
    SELECT seller_id 
    FROM orders 
    WHERE EXTRACT(YEAR FROM sale_date) = 2020
    AND seller_id IS NOT NULL
)
order by seller_name
;