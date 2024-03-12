-- (Exercício 1) Crie uma coluna calculada com o número de visitas realizadas por cada
-- cliente da tabela sales.customers

select
	cus.*,
    count(distinct fun.visit_id) as visitas_realizadas
from sales.customers as cus

left join sales.funnel as fun
    on cus.customer_id = fun.customer_id
	
group by cus.customer_id



