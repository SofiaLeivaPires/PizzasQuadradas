-- CREATE TABLE Clientes (
--  id_cliente SERIAL PRIMARY KEY,
--  telefone VARCHAR(15),
--  nome VARCHAR(30),
--  logradouro VARCHAR(30),
--  numero NUMERIC(5,0),
--  complemento VARCHAR(30),
--  bairro VARCHAR(30),
--  cidade VARCHAR(30),
--  estado CHAR(2),
--  cep VARCHAR(9),
--  referencia VARCHAR(30)
--  );

--  DROP TABLE IF EXISTS clientes;


-- CREATE TABLE Pedidos (
-- 	id_pedido SERIAL PRIMARY KEY,
-- 	valor NUMERIC(4,2),
-- 	data_pedido TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- 	id_cliente INT NOT NULL,
-- 	FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
-- );


-- CREATE TABLE Pizzas (
-- 	id_pizza SERIAL PRIMARY KEY,
-- 	nomePizza VARCHAR(30),
-- 	descricao VARCHAR(30), 
-- 	valorPizza NUMERIC(3,2)
-- );

CREATE TABLE ContemPizzasPedido (
	id_pizzas_pedido SERIAL PRIMARY KEY,
	id_pizza INT NOT NULL,
	id_pedido INT NOT NULL,
	quantidade INT, 
	valor NUMERIC(5,2),
	FOREIGN KEY (id_pizza) REFERENCES Pizzas(id_pizza),
	FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
);

