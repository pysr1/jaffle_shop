with orders_cte as (

	SELECT * FROM  {{ ref('orders') }}
),

final as (

	SELECT 
		order_date, 
		sum(amount) as amount,
		avg(amount) as aov
	from orders_cte
    group by 
        order_date
)

SELECT * FROM final