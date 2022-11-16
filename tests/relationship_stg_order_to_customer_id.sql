select o.*
from {{ ref('stg_orders')}} o 
left join {{ ref('stg_customers') }} c 
on c.customer_id = o.customer_id
where c.customer_id is null
