EXEC sp_help tb_users;

INSERT INTO tb_users VALUES (1, 'Jo�o');
INSERT INTO tb_users VALUES (1, 'Jo�o', 'joao@gmail.com');

SELECT * FROM tb_users

-- Mesmo comando:
TRUNCATE TABLE tb_users;
DELETE FROM tb_users;

ALTER TABLE tb_users ALTER COLUMN id INT not NULL; --n�o aceita mais NULL
-- n�o � poss�vel definir restri��o de CHAVE PRIMARIA em coluna que aceita NULL
ALTER TABLE tb_users ADD CONSTRAINT pk_tb_users PRIMARY KEY (id);

ALTER TABLE tb_users ADD email VARCHAR(100);
-- Depois que cria uma coluna quando alguns dados j� foram inseridos, fica complicado de manter. ATT: Estruturar bem a tabela ANTES de inserir dados.
ALTER TABLE tb_users ADD CONSTRAINT uq_tb_users UNIQUE(email);
ALTER TABLE tb_users ALTER COLUMN email VARCHAR not NULL; --n�o aceita mais NULL
