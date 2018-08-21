use db_loja_manha;

-- QUESTÃO 01
SELECT 
     cid_id as 'id', 
     cid_nome as 'cidaede', 
     bai_nome as 'bairro'
FROM
    tb_cidades
        LEFT JOIN
    tb_bairros ON cid_id = bai_id;

-- QUESTÃO 02

SELECT 
*
FROM
    (SELECT 
        cid_id as 'id', 
		cid_nome as 'cidaede'
    FROM
        tb_cidades
    LEFT JOIN tb_ufs ON uf_id = cid_uf_id UNION SELECT 
        *
    FROM
        tb_cidades rigth
    JOIN tb_ufs ON uf_id = cid_uf_id) AS r
WHERE
    r.cid_id IS NULL OR r.uf_id IS NULL;
    
-- QUESTÃO 03
SELECT 
    mar_id as 'id',
    mar_nome as 'marca'
FROM
    tb_marcas
        LEFT JOIN
    tb_produtos ON mar_id = pro_mar_id
WHERE
    pro_id IS NULL;


-- QUESTÃO 04

SELECT 
    *
FROM
    tb_produtos
        LEFT JOIN
    tb_itens_venda ON pro_id = idv_pro_id
WHERE
    idv_pro_id IS NULL;


-- QUESTÃO 05 

SELECT 
    *
FROM
    tb_funcionarios
        LEFT JOIN
    tb_vendas ON fun_matricula = ven_fun_matricula
        LEFT JOIN
    tb_fones_funcionarios ON fun_matricula = fdf_fun_matricula
WHERE
    ven_id IS NULL;

-- QUESTÃO 06 

SELECT 
    *
FROM
    tb_clientes
        LEFT JOIN
    tb_fones_clientes ON cli_id = fdc_cli_id
        INNER JOIN
    tb_pessoas_fisicas ON cli_id = cpf_clientes_id
WHERE
    fdc_fones IS NULL;


-- QUESTÃO 07

SELECT 
    for_id, for_nome_fantasia, fdf_fone 
FROM
    tb_fornecedores
        LEFT JOIN
    tb_fone_fornecedores ON for_id
        INNER JOIN
    tb_compra ON for_id = com_for_id;


-- QUESTÃO 08

SELECT 
    *
FROM
    tb_fornecedores
        LEFT JOIN
    tb_fone_fornecedores ON tb_fones_fornecedores = for_id
WHERE
    for_id IS NULL;
