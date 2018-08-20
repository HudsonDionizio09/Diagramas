USE DB_LOJA;

-- QUESTAO 01

SELECT 
    dep_nome as 'departamento', 
    pro_descricao as 'produto', 
    pro_preco as 'valor', 
    dep_desconto as 'desconto'
FROM
    tb_departamentos
        JOIN
    tb_produtos ON dep_id = pro_dep_id
WHERE
    pro_quantidade_estoque > pro_quantidade_minima
ORDER BY dep_nome ASC;

-- QUESTÃO 02

SELECT 
    dep_nome as 'departamento', 
    pro_descricao as 'produto', 
    pro_preco as 'valor', 
    dep_desconto as 'desconto'
FROM
    tb_departamentos
        JOIN
    tb_produtos ON dep_id = pro_dep_id
WHERE
   dep_nome = 'calçados';

-- QUESTÃO 03

SELECT 
    cli_nome AS 'clientes', fdc_fone AS 'fone'
FROM
    tb_clientes
        JOIN
    tb_fones_clientes ON cli_id - fdc_cli_id
        JOIN
    tb_ceps ON cep_id = cli_cep_id
        JOIN
    tb_bairros ON bai_id = cep_bai_id
WHERE
    bai_nome IN ('tirol' , 'alecrim', 'ribeira')
ORDER BY cli_nome ASC;

-- QUESTÃO 04

SELECT 
    for_nome AS 'clientes', fdf_fone AS 'fone'
FROM
    tb_fornecedores
        JOIN
    tb_fones_fornecedores ON for_id - fdf_for_id
        JOIN
    tb_ceps ON cep_id = for_cep_id
        JOIN
    tb_bairros ON bai_id = cep_bai_id
		JOIN
    tb_cidades ON cid_id = bai_cid_id    
WHERE
    cid_nome IN ('Natal' , 'Parnamirim')
ORDER BY for_nome ASC;


-- QUESTÃO 05

SELECT 
ven_nota_fiscal as 'nota fiscal', 
ven_data_venda as 'data',
 fdp_nome as 'pagamento', 
 fun_nome as 'funcionário'
FROM
    tb_vendas
        JOIN
    tb_fromas_pagamentos ON fdp_id = vnd_fdp_id
        JOIN
    tb_vendedores ON fun_matricula = ven_fun_matricula;

-- QUESTÃO 06

SELECT
ven_nota_fiscal as 'nota fiscal', 
ven_data_venda as 'data',
 fdp_nome as 'pagamento', 
 fun_nome as 'funcionário'
FROM
    tb_vendas
        JOIN
    tb_fromas_pagamentos ON fdp_id = vnd_fdp_id
        JOIN
    tb_vendedores ON fun_matricula = ven_fun_matricula
WHERE
ven_data_venda like '2012-03-%';


-- QUESTÃO 07

SELECT  DISTINCT
    pro_nome AS 'produto', dep_nome AS 'departamento'
FROM
    tb_produtos
        JOIN
    tb_departamentos ON dep_id = pro_dep_id
        JOIN
    tb_intes_compra ON tdc_id = tdc_pro_id
        JOIN
    tb_compras ON com_id = com_pro_id
WHERE
    com_data_compra LIKE '2012-03-%';

-- QUESTÃO 08

SELECT 
    pro_nome AS 'produto', dep_nome AS 'departamento'
FROM
    tb_produtos
        JOIN
    tb_departamentos ON dep_id = pro_dep_id
        JOIN
    tb_intes_vendas ON PRO_id = idv_pro_id
        JOIN
    tb_vendas ON com_id = com_pro_id
WHERE
    dep_nome = 'uniformes';

-- QUESTÃO 09

SELECT 
    pro_nome AS 'produto', dep_nome AS 'departamento'
FROM
    tb_produtos
        JOIN
    tb_departamentos ON dep_id = pro_dep_id
        JOIN
    tb_intes_vendas ON PRO_id = idv_pro_id
        JOIN
    tb_funcionarios ON fun_matricula = ven_fun_matricula
WHERE
  fun_matricula = 2 and ven_data_venda between '2012-01-01' and '2012-06-30';


-- QUESTÃO 10
 SELECT 
    *
FROM
    tb_funcionarios
        LEFT JOIN
    tb_vendas ON fun_matricula = ven_fun_matricula
WHERE
    ven_id IS NULL;
 ;


