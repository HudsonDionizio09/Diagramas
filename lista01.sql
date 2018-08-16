USE DB_LOJA;

-- QUESTÃO 01

SELECT 
	dep_nome as 'nome dep',
	dep_desconto as 'desconto dep'
FROM
	tb_departamentos;
    
 -- QUESTÃO 02 
 
 SELECT 
	pro_descricao as 'descrição', 
    pro_preco as 'valor venda', 
    pro_quantidade_estoque as 'estoque'
 FROM
	tb_produtos;
    
-- QUESTÃO 03
SELECT 
	pro_descricao as 'descrição', 
    pro_preco as 'valor venda', 
    pro_quantidade_estoque as 'estoque',
    pro_quantidade_minima as 'minimo'
 FROM
	tb_produtos 
WHERE
	pro_quantidade_estoque < pro_quantidade_mínima;
    
-- QUESTÃO 04
SELECT 
	pro_descricao as 'descrição', 
    pro_preco as 'valor venda', 
    pro_quantidade_estoque as 'estoque',
    pro_quantidade_minima as 'minimo'
 FROM
	tb_produtos 
WHERE
	pro_quantidade_estoque > pro_quantidade_mínima;

-- QUESTÃO 05 
SELECT 
    fun_matricula as 'matricula', fun_nome as 'funcionarias', fun_data_adimssao as 'admissão'
FROM
    tb_funcionarios
WHERE
    fun_sex_id = (SELECT sex_id FROM tb_sexo WHERE sex_nome = 'femínino');

-- QUESTÃO 06

SELECT 
    fun_matricula 'matricula', fun_nome 'funcionarios', fun_data_adimssao as 'admissão'
FROM
    tb_funcionarios
WHERE
    fun_sex_id = (SELECT sex_id FROM tb_sexo WHERE sex_nome = 'masculino')
    AND fun_data_admissao BETWEEN '2005-01-01' AND '2008-12-31';

-- QUESTÃO 07

SELECT 
    cli_nome AS 'cliente'
FROM
    tb_clientes
WHERE
    cli_nome LIKE '%santos%';
    
-- QUESTÃO 08 

SELECT 
    pro_descricao AS 'descrição', pro_preco AS valor
FROM
    tb_produtos
ORDER BY pro_preco ASC
LIMIT 2;

-- QUESTÃO 09

SELECT 
    pro_descricao AS 'descrição', pro_preco AS valor
FROM
    tb_produtos
ORDER BY pro_preco DESC
LIMIT 2;

-- QUESTÃO 10

SELECT 
    fun_matricula AS 'matricula',
    fun_nome AS 'funcionario',
    fun_data_admissao AS 'admissão'
FROM
    tb_funcionarios
ORDER BY fun_data_admissao ASC
LIMIT 3;