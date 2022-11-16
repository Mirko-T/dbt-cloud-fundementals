select o.order_id, customer_id, order_date, amount
from {{ ref('stg_orders') }} o 
join {{ ref('stg_payments') }} p 
on p.order_id = o.order_id
where p.status = 'success'