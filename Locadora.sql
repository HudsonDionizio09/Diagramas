use db_locadora;

SELECT 
    *
FROM
    tb_clientes,
    tb_sexos
WHERE
    sex_id = cli_sex_id;
    
SELECT 
    *
FROM
    tb_bairros
        JOIN
    tb_clientes ON bai_id = cli_bai_id
        JOIN
    tb_sexos ON sex_id = cli_sex_id;
    
create table if not exists tb_bairros(
	bai_id int(6) unsigned zerofill not null auto_increment,
    bai_nome varchar(30) not null,
    constraint primary key(bai_id)
);

insert into tb_bairros
(bai_nome)
values('TIROL'),('CAMPIM-MACIO'),('ALECRIM'),('NOVA DESCOBERTA');

ALTER TABLE TB_CLIENTES
ADD COLUMN cli_bai_id int(6) unsigned zerofill,
ADD CONSTRAINT FOREIGN KEY (CLI_BAI_ID) REFERENCES TB_BAIRROS(BAI_ID);


SELECT 
    CLI_ID, CLI_CPF, CLI_NOME, SEX_NOME, BAI_NOME
FROM
    TB_BAIRROS
        JOIN
    TB_CLIENTES ON BAI_ID = CLI_BAI_ID
        JOIN
    TB_SEXOS ON SEX_ID = CLI_SEX_ID
WHERE
    CLI_NOME LIKE '%silva%'
ORDER BY cli_nome ASC;

