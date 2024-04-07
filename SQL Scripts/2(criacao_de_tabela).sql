USE estudos

-- Tabela principal ou tabela de apoio
CREATE TABLE tb_users (
	id INT, -- Sintaxe: a última coluna não tem vírgula / sempre Nome da coluna ESPAÇO tipo da variável
	name VARCHAR(100)
)

EXEC sp_help tb_users

-- Qual info não pode faltar?
-- Evite cair na armadilha de criar tabelas gigantes