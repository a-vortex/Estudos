USE estudos

-- Tabela principal ou tabela de apoio
CREATE TABLE tb_users (
	id INT, -- Sintaxe: a �ltima coluna n�o tem v�rgula / sempre Nome da coluna ESPA�O tipo da vari�vel
	name VARCHAR(100)
)

EXEC sp_help tb_users

-- Qual info n�o pode faltar?
-- Evite cair na armadilha de criar tabelas gigantes