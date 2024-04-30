USE vendasDB;

/*Você está desenvolvendo um banco de dados para uma loja online que vende produtos 
eletrônicos. Cada produto eletrônico possui um nome, uma marca, um preço e uma 
quantidade em estoque. Além disso, a loja precisa armazenar as informações dos 
clientes que fazem compras, incluindo nome, endereço e país. No entanto, a loja 
deseja garantir que nenhum cliente faça compras se não estiver registrado no sistema.

Projete o esquema do banco de dados para esse cenário e crie as tabelas necessárias 
para armazenar as informações sobre produtos e clientes, bem como a relação entre 
eles (compras). Além disso, adicione uma constraint para garantir que apenas clientes 
registrados possam fazer compras.*/

CREATE TABLE produtosEletronicos (
idProdutosEletronicos INT unsigned NOT NULL auto_increment, 
nomeProduto VARCHAR (200) NOT NULL, 
marca VARCHAR (200) NOT NULL, 
preco Double NOT NULL, 
quantidade INT NOT NULL default '0',

primary key(idProdutosEletronicos)
);

CREATE TABLE clientes(
idClientes INT unsigned NOT NULL auto_increment,
nome VARCHAR (200) NOT NULL, 
endereco VARCHAR (200) NOT NULL, 
pais varchar (200) NOT NULL default 'Brasil', 

primary key (idClientes)
);

CREATE TABLE compras( -- relaçao produto e cliente
idCompras INT unsigned not null auto_increment, 
comprador_fk int unsigned not null, 
compra_fk int unsigned not null,
CONSTRAINT produtofk FOREIGN KEY (compra_fk) References produtosEletronicos (idProdutosEletronicos),
CONSTRAINT cliente_fk FOREIGN KEY (comprador_fk) REFERENCES clientes (idClientes),

primary key (idCompras)
);