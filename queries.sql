-- relação de fornecedores por ordem alfabética

SELECT
	trade_supplier as Empresa,
	company_supplier as Razão_Social,
	concat(substring(cnpj,1,2),'.',substring(cnpj,3,3),'.',substring(cnpj,6,3),'/',substring(cnpj,9,4),'-',substring(cnpj,13,2)) as CNPJ,
    CASE WHEN length(phone) = 10 THEN
		concat('(',substring(phone,1,2),')  ',substring(phone,3,4),'-',substring(phone,7,4))
	ELSE
		concat('(',substring(phone,1,2),') ',substring(phone,3,5),'-',substring(phone,8,4))
	END as Fone
FROM supplier
ORDER BY trade_supplier;

-- relatório de produtos por fornecedor com a quantidade em estoque

SELECT
	p.name_product as Produto,
    s.trade_supplier as Fornecedor,
    ps.quantity as Quantidade
FROM product p
INNER JOIN supplier s, product_stock ps
WHERE p.id_supplier = s.id_supplier AND p.id_product = ps.id_product
ORDER BY Fornecedor, Produto;

-- Resumo venda de produtos no dia 30/08/2013 
-- Quantidade de Pedidos, Valor Total de Pedidos, Ticket Médio, Menor Valor e Maior Valor

SELECT
	count(*) as Quantidade,
    sum(value_order) as Valor_Total,
    round(avg(value_order),2) as Ticket_Médio,
    min(value_order) as Menor_Venda,
    max(value_order) as Maior_Venda
FROM orders
WHERE  data_order < '2023-08-31' AND data_order > '2023-08-30';

-- Quantidade de pedidos por consumidor

SELECT
	id_customer as ID_Cliente, 
	count(1) as quantidade
FROM orders
GROUP BY id_customer
ORDER BY quantidade DESC;

-- pedidos com mais de uma forma de pagamento

SELECT
	id_order as Id_Pedido,
	count(*) as qtde
FROM order_payment
GROUP BY id_order
HAVING count(*) > 1;