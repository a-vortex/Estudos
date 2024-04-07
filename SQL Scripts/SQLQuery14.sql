CREATE DATABASE HealthSystem

CREATE TABLE tb_user
(
	id INT,
	u_name VARCHAR(100),
	addres VARCHAR(100),
	birthday DATETIME,
	sex TINYINT,
	email VARCHAR(100),
	is_adm BIT,
	is_med BIT
)

backup database estudos
to disk = 'Área de Trabalho'