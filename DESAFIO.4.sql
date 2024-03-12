-- EXERCÍCIOS ########################################################################

-- (Exercício 1) Identifique quais as marcas de veículo mais visitada na tabela sales.funnel

select *
from sales.funnel

select * 
from sales.products

--- Olhar pelo product_id

select 
	prod.brand,
	count(fun.visit_page_date) as marcas_visitadas
from sales.funnel as fun

left join sales.products as prod
	on fun.product_id = prod.product_id
	
group by prod.brand
order by visitadas desc


-- (Exercício 2) Identifique quais as lojas de veículo mais visitadas na tabela sales.funnel

select *
from sales.funnel

select * 
from sales.stores
--- Olhar pelo store_id

select 
	sto.store_cnpj,
	count(fun.visit_page_date) as lojas_visitadas
from sales.funnel as fun

left join sales.stores as sto
	on fun.store_id = sto.store_id
	
group by sto.store_cnpj
order by lojas_visitadas desc




-- (Exercício 3) Identifique quantos clientes moram em cada tamanho de cidade (o porte da cidade
-- consta na coluna "size" da tabela temp_tables.regions)


select
	reg.size,
	count(*) as contagem
from sales.customers as cus

left join temp_tables.regions as reg
	on lower(cus.city) = lower(reg.city)
	and lower(cus.state) = lower(reg.state)
	
group by reg.size
order by contagem desc

