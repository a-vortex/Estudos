-- Cria um banco de dados estudos
CREATE DATABASE estudos;

-- Muda o espaço para mexer no banco de dados TESTE
USE estudos;
--==================================================================================
-- Tabela principal ou tabela de apoio
-- Sintaxe: a Ultima coluna NAO tem virgula 
-- Sempre <Nome da coluna> ESPACO <tipo da variavel>
CREATE TABLE tb_users (
	id INT, 
	name VARCHAR(100)
)
--==================================================================================
-- Exibe Informacoes sobre a tabela em questao
EXEC sp_help tb_users

-- Insere dentro da tabela tb_users uma linha
INSERT INTO tb_users VALUES (1, 'Joao');
-- Esse comando vai dar erro uma vez que nao foi previsto o email na definicao
INSERT INTO tb_users VALUES (1, 'Joao', 'joao@gmail.com');

-- Qual info nao pode faltar? planejar a tabela ANTES de usar.

-- Retorna TODAS as colunas da tabela tb_users
SELECT * FROM tb_users

-- Hard reset (apaga de vez) a tabela
TRUNCATE TABLE tb_users;
-- Risca todos os dados da tabela
DELETE FROM tb_users;

-- A coluna ID nao aceita mais NULL
ALTER TABLE tb_users ALTER COLUMN id INT not NULL; 
-- nao e possivel definir restricao de CHAVE PRIMARIA em coluna que aceita NULL

-- Adiciona uma constraint de nome pk_tb_users de chave primaria a coluna ID 
ALTER TABLE tb_users ADD CONSTRAINT pk_tb_users PRIMARY KEY (id);

ALTER TABLE tb_users ADD email VARCHAR(100);
-- Depois que cria uma coluna quando alguns dados ja foram inseridos, fica complicado de manter.
-- ATT: Estruturar bem a tabela ANTES de inserir dados.

-- Adiciona uma constraint de nome uq_tb_users que torna o email unico (nao pode haver duas linhas com mesmo email)
ALTER TABLE tb_users ADD CONSTRAINT uq_tb_users UNIQUE(email);
-- A coluna email nao aceita mais NULL
ALTER TABLE tb_users ALTER COLUMN email VARCHAR not NULL; 
--==================================================================================
-- Constraint chave primaria na coluna ID 
Constraint pk_users PRIMARY KEY(id)
-- Chave estrangeira - So cria se existir o id do people 
Constraint fk_users_people FOREIGN KEY(id_people) REFERENCES people(id) 

-- preenchimento obrigatorio
NOT NULL
-- valor padrao 
DEFAULT
-- Regra de validacao 
CHECK 
-- Impede duplicidade (nao torna obrigatorio o preenchimento)
UNIQUE 
--==================================================================================
CREATE TABLE tb_cliente (
	id INT NOT NULL PRIMARY KEY IDENTITY, --IDENTITY =auto incremento
	nome_cli VARCHAR(100) NOT NULL,
	renda_cli DECIMAL(19,2) DEFAULT 0, -- 0 por padrao
	email_cli VARCHAR(255) NOT NULL,
	data_cli DATETIME NOT NULL,
	CHECK (renda_cli >= 0) -- checa se a renda fornecida é maior ou igual a 0
)
-- Insere os seguintes dados na tabela tb_clientes
INSERT INTO tb_cliente VALUES
('Djalma Sindeaux', 19500,  'djalma@code.com', '1990-01-01'),
('Joao Rangel', 19600, 'joao@code.com', '1990-01-01'),
('glaucio daniel', 0, 'glaucio@code.com', '1990-01-01');

EXEC sp_help tb_cliente;

-- Exibe quantas linhas tem na tabela
SELECT COUNT(*) FROM tb_cliente;

-- Exibe todos os dados da tabela
SELECT * FROM tb_cliente

-- Exibe apenas o primeiro dado da tabela
SELECT TOP 1 * FROM tb_cliente;
-- Exibe apenas o id e o nome_cli(nomeado por nome) do primeiro da tabela
SELECT TOP 1 id, nome_cli AS nome FROM tb_cliente;
--==================================================================================
-- retorna todos da tabela ONDE renda_cli for diferente de 19500
SELECT * FROM tb_cliente WHERE renda_cli <> 19500;

-- retorna todos da tabela ONDE renda_cli for maior do que 1000 E menor do que 20000
SELECT * FROM tb_cliente WHERE renda_cli > 1000 AND renda_cli < 20000
-- mesma coisa porem usando BETWEEN
SELECT * FROM tb_cliente WHERE renda_cli BETWEEN 1000 AND 20000

-- retorna todos da tabela ONDE renda_cli NÃO for maior que 1000
SELECT * FROM tb_cliente WHERE NOT renda_cli > 1000 
--==================================================================================
-- Retorna o coeficiente de som das palavras
SELECT SOUNDEX('michael'), SOUNDEX('maicol');
-- primeira letra do nome precisa ser igual

-- retorna todos os dados da tabela ONDE o coeficiente de som do nome_cli for igual ao citado
SELECT * FROM tb_cliente WHERE SOUNDEX(nome_cli) = SOUNDEX('Juan');
SELECT * FROM tb_cliente WHERE SOUNDEX(nome_cli) = SOUNDEX('Dijalma');

-retorna o coeficiente de diferenciacao das palavras, de 0 a 4.
SELECT DIFFERENCE('Michael', 'Michael') -- 4 = muito semelhante
SELECT DIFFERENCE('Michael', 'Mikael') -- 4 = muito semelhante
SELECT DIFFERENCE('Michael', 'Maicou') -- 3 = Bem parecido
SELECT DIFFERENCE('Michael', 'glaucio') -- 2
-- menor do que 3 = mais ou menos, 0= completamente diferente

-- retorna todos da tabela tb_cliente ONDE o coeficiente de diferenciacao é maior do que 2 entre djalma e nome_cli
SELECT * FROM tb_cliente WHERE DIFFERENCE('Djalma', nome_cli)>2
--==================================================================================
-- retorna a quantidade de linhas da tabela com nome de TOTAL
SELECT COUNT(*) AS total FROM tb_cliente

SELECT
	COUNT(*) AS total, -- retorna a quantidade de linhas da tabela com nome de TOTAL
	SUM(renda_cli) AS salario_total, -- soma de todas as renda_cli com nome de salario_total
	CONVERT(DECIMAL(19,2), AVG(renda_cli)) AS media_salarial, -- media de todas as renda_cli com nome de media_salarial
	MAX(renda_cli) AS maior_salario, -- a maior renda_cli com nome de maior_salario
	MIN(renda_cli) AS menor_salario -- a menor renda_cli com nome de menor_salario
FROM tb_cliente; -- da tabela tb_cliente
-- avg(coluna)-> média de todas os dados de uma coluna
-- convert(decimal(19,2), AVG(renda_cli))-> converte o dado de avg(renda_cli) para um decimal de 19 algorismos com duas casas decimais
--==================================================================================
EXEC sp_help tb_cliente;

-- faz permitir a insercao manual do campo auto incremento da tabela
SET IDENTITY_INSERT tb_cliente ON;

-- faz se necessario declarar a ordem dos valores que se está inserindo na tabela
INSERT INTO tb_cliente (id, nome_cli, renda_cli, email_cli, data_cli) 
VALUES(10, 'Ronaldo', 50, 'ronaldo@code.com', '1990-01-01');

-- proibe a insercao manual do campo auto incremento da tabela
SET IDENTITY_INSERT tb_cliente OFF;

-- nao se pode mais inserir o campo auto incrementavel em seguida
INSERT INTO tb_cliente
VALUES('Ronaldo', 50, 'ronaldo@code.com', '1990-01-01');
--==================================================================================
SELECT * FROM tb_cliente;

-- atualiza na tabela SETANDO a renda_cli para 1000 ONDE o id=6
UPDATE tb_cliente SET renda_cli = 1000 WHERE id = 6;

-- atualiza na tabela SETANDO a renda_cli para 10% maior de TODOS na tabela.
UPDATE tb_cliente
SET renda_cli = renda_cli * 1.1;
--==================================================================================
SELECT * FROM tb_cliente;

-- DELETA na tabela ONDE id = 10, 11, 12
DELETE FROM tb_cliente 
WHERE id IN(10,11,12)
-- IMPORTANTE SEMPRE SETAR O WHERE, CASO CONTRARIO TODA A TABELA È DELETADA
--==================================================================================
CREATE TABLE tb_cliente2 (
	id int IDENTITY(1,1) NOT NULL, -- comeca no 1 e incrementa de 1 em 1
	nome_cli varchar(100) NOT NULL,
	email_cli varchar(255) NOT NULL,
)

INSERT INTO tb_cliente2 -- insere nessa tabela
SELECT nome_cli, email_cli -- o retorno de nome_cli, email_cli
FROM tb_cliente -- advindo dessa tabela
WHERE renda_cli > 10000; -- ONDE a renda_cli for maior que 10000

SELECT * FROM tb_cliente2;
--==================================================================================