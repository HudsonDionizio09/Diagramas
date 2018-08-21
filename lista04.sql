use db_loja_manha;

-- QUESTÃO 01


SELECT 
    dep_nome,
    Count(pro_quantidade_estoque) as 'Quantidade de produtos'
FROM
    tb_departamentos
        RIGHT JOIN
    tb_produtos ON pro_quantidade_estoque = pro_id;

-- QUESTÃO 02

SELECT 
    cli_nome,
    COUNT(fdc_fone) AS 'Números do Clientes'
FROM
    tb_clientes
        LEFT JOIN
    tb_fones_clientes ON fdc_fone = cli_id;
    
-- QUESTÃO 03

SELECT 
    SUM(idv_quantidade * pro_preco)
FROM
    tb_produtos
        JOIN
    tb_itens_vendas ON pro_id = idv_pro_id;
    
-- QUESTÃO 04

SELECT 
    MAX(com_total_compra) as 'Total da compra' 
FROM
    tb_fornecedores
        RIGHT JOIN
    tb_compras ON com_total_compra = for_id;
    
-- QUESTÃO 05 

select * from tb_produtos left join 