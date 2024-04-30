USE vendasDB;

DROP TABLE IF EXISTS vendas, produtos, produtos_vendas, vendedor, cliente, prateleira;

CREATE TABLE produtos (
idProdutos INT unsigned NOT NULL auto_increment PRIMARY KEY,
nome_produto VARCHAR(100) NOT NULL,
CONSTRAINT fk_prateleira FOREIGN KEY (Num_Prateleira) REFERENCES prateleira(idPrateleira),
quantidade double not null default '0'
);

CREATE TABLE vendas (
idVendas INT unsigned NOT NULL auto_increment PRIMARY KEY,
CONSTRAINT fk_cliente FOREIGN KEY (cod_cliente) REFERENCES cliente(idCliente)
);

CREATE TABLE produtos_vendas (
idProdutos_vendas INT unsigned NOT NULL auto_increment,
PRIMARY KEY (idProdutos_vendas),
ProdutoFK INT NOT NULL,
VendasFK INT NOT NULL,
CONSTRAINT fk_produtos FOREIGN KEY (ProdutoFK) REFERENCES produtos(idProdutos),
CONSTRAINT fk_vendas FOREIGN KEY (VendasFK) REFERENCES vendas(idVendas)
);

CREATE TABLE vendedor (
idVendedor INT unsigned NOT NULL auto_increment PRIMARY KEY, 
nomeVendedor VARCHAR (100) NOT NULL
);

CREATE TABLE cliente (
idCliente INT unsigned NOT NULL auto_increment PRIMARY KEY,
nomeCliente VARCHAR(100) NOT NULL
);

CREATE TABLE prateleira (
idPrateleira INT unsigned NOT NULL auto_increment PRIMARY KEY,
num_prateleira INT NOT NULL
);