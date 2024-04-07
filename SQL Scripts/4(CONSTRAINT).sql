Constraint pk_customer PRIMARY KEY(id) -- chave primaria
Constraint fk_customer_people FOREIGN KEY(id_people) REFERENCES people(id) -- Só cria se existir o id do people -- chave estrangeira
NOT NULL -- preenchimento obrigatorio
DEFAULT -- valor padrao
CHECK -- Regra de validação
UNIQUE -- Impede duplicidade
-- nome 