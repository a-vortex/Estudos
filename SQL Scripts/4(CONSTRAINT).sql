Constraint pk_customer PRIMARY KEY(id) -- chave primaria
Constraint fk_customer_people FOREIGN KEY(id_people) REFERENCES people(id) -- S� cria se existir o id do people -- chave estrangeira
NOT NULL -- preenchimento obrigatorio
DEFAULT -- valor padrao
CHECK -- Regra de valida��o
UNIQUE -- Impede duplicidade
-- nome 