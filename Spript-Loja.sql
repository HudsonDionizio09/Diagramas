USE DB_LOJA;

CREATE TABLE IF NOT EXISTS TB_CLIENTE_FISICO(
CLF_CLI_CODIGO INT UNSIGNED NOT NULL,
CLF_RG VARCHAR(18), 
CLF_CPF VARCHAR(11), 
CLF_DT_NASCIMENTO DATE,
CLF_SEX_CODIGO INT UNSIGNED NOT NULL,
CONSTRAINT PRIMARY KEY(CLF_CLI_CODIGO),
CONSTRAINT FK_CLF_CLI FOREIGN KEY(CLF_CLI_CODIGO) REFERENCES TB_CLIENTES(CLI_CODIGO),
CONSTRAINT FK_CLF_SEX FOREIGN KEY(CLF_SEX_CODIGO) REFERENCES TB_SEXOS(SEX_CODIGO)
);

USE DB_LOJA;

CREATE TABLE IF NOT EXISTS TB_CLIENTE_JURIDICO(
CLJ_CLI_CODIGO INT UNSIGNED NOT NULL,
CLJ_RAZ_SOCIAL VARCHAR(20) NOT NULL,
CLJ_INS_ESTADUAL VARCHAR(20) NOT NULL,
CLJ_INS_MUNICIPAL VARCHAR(20)NOT NULL,
CLJ_CPNJ VARCHAR(20) NOT NULL,
CLJ_WEBSITE VARCHAR(40) NOT NULL,
CONSTRAINT PRIMARY KEY(CLJ_CLI_CODIGO),
CONSTRAINT FK_CLI_CLJ FOREIGN KEY (CLJ_CLI_CODIGO) REFERENCES TB_CLIENTES(CLI_CODIGO)
);
