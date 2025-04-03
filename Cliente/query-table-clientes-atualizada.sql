
CREATE TABLE Pedidos (
	id_pedido SERIAL PRIMARY KEY,
	valor NUMERIC(4,2),
	data_pedido TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	id_cliente INT NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

