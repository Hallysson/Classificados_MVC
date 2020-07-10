-- ************************************************************
-- Base de Dados: classificados
-- ************************************************************

drop table if exists classificados_mvc.anuncios;
create table classificados_mvc.anuncios (
  id serial primary key,
  id_usuario integer not null,
  id_categoria integer not null,
  titulo varchar(100) default null,
  descricao text,
  valor float default null,
  estado integer default null
);
insert into classificados_mvc.anuncios (id_usuario, id_categoria, titulo, descricao, valor, estado)
values
	(1,1,'Hublot Editado','Algum produto de anuncio legal',300,1),
	(1,2,'Casaco de Fulano','Descrição luxuosa do casaco',100,0),
	(1,4,'Ferrari','Carro esportivo muito barato',50,1),
	(1,4,'Mecedes-Benz',null,150,1),
	(1,4,'BMW',null,120,1);

drop table if exists classificados_mvc.anuncios_imagens;
create table classificados_mvc.anuncios_imagens (
  id serial primary key,
  id_anuncio integer not null,
  url varchar(100) not null default ''
);
insert into classificados_mvc.anuncios_imagens (id_anuncio, url)
values
	(3,'ce22b99a632571fc5ff345eafa252a67.jpg'),
	(3,'c38581766dff46f000ae243330ead1a8.jpg'),
	(3,'fe31ef89de0c785c24e2007719241763.jpg'),
	(4,'ef9b88ad9e74cd9b4f1510653da291a2.jpg'),
	(5,'04bd9d8ac92c267405cfa7682d59049b.jpg'),
	(5,'fb3019cbc47211aed1cb32b76d660c13.jpg'),
	(5,'c10d16f9aa0353d868bef93ff7e036c8.jpg');

drop table if exists classificados_mvc.categorias;
create table classificados_mvc.categorias (
  id serial primary key,
  nome varchar(100) not null default ''
);
insert into classificados_mvc.categorias (nome)
values
	('Relógios'),
	('Roupas'),
	('Eletrônicos'),
	('Carros');

drop table if exists classificados_mvc.usuarios;
create table classificados_mvc.usuarios (
  id serial primary key,
  nome varchar(100) not null default '',
  email varchar(100) not null default '',
  senha varchar(32) not null default '',
  telefone varchar(30) default null
);
insert into classificados_mvc.usuarios (nome, email, senha, telefone)
values
	('Hall','correio.h@gmail.com','202cb962ac59075b964b07152d234b70','99999999');