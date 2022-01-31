/*-------------------------------------------------Aula 02 Mysql----------------------------------------------------------------------------*/
/*dropando a tabela*/
drop database cadastro;

/*queremos criar a tabela que aceita os caracteres com aceitoaçao como na maioria das palavras brasileiras*/

/*criando a tabela com o padrao utf-8(lingua latina)*/
create database cadastro

/*aceitando caracteres com a Acentuação*/
default character set utf8
default collate utf8_general_ci;

/*tabela criada sem utf-8 */
create database teste;
drop database teste;

/*criando tabela*/
create table pessoas(
	primary key (id),
	id integer not null auto_increment,
	nome varchar(30) not null,
    nascimento date,
    sexo enum('M','F') ,
    peso decimal(5,2),
    altura decimal(3,2),
    nacionalidade varchar(20) default 'BRASIL'
) default charset utf8;

/*-------------------------------------------------Aula 05 Mysql----------------------------------------------------------------------------*/
/*inserindo na tabela modo1*/
insert into pessoas
	(nome, nascimento, sexo, peso, altura, nacionalidade)
values
    ('Kelly', '2001-12-08', 'F', '56.0', '1.74', 'Brasil' );
    
/*inserindo na tabela mode2*/
insert into pessoas values
(default,'Danilo','1999-05-21','M', '75.0','1.74', 'Paulista');    

/*inserindo mais de uma pessoa na tabela*/
insert into pessoas values
(default,'Adriana','1984-12-12','F', '75.0','1.72', default),
(default,'Danilo','1983-08-24','M', '75.0','1.70', 'Bahia'),
(default,'Maria','1970-07-17','F', '55.0','1.65', 'Mineira');  
  
  /*selecionando tudo na tabela*/
    select * from pessoas;
    
/*-------------------------------------------------Aula 06 Mysql----------------------------------------------------------------------------*/

/*adicionando uma nova coluna desse jeito ele vai adicionar sempre na ultima*/
alter table pessoas
add column profissao varchar(10);

/*dropando coluna*/
alter table pessoas
drop column profissao;

/*descrevendo a tabela*/
describe pessoas;

/*adicionando uma nova coluna em uma posiçao especifica*/
alter table pessoas
add column profissao varchar(10) after nome;

/*adicionado a colunoa no primeiro campo*/
alter table pessoas
add column codigo int first;

/*Modificando as definiçoes da coluna*/
alter table pessoas
modify column profissao varchar(20);

/*Renomeando colunas*/
alter table pessoas
change column profissao prof varchar(20);

/*Renomeando o nome da tabela*/
alter table pessoas
rename to gafanhotos;

select * from gafanhotos

/*outra tabela */
create table if not exists cursos(
	nome varchar(30) not null unique,
    descricao text,
    carga int unsigned,
    totaulas int,
    ano year default '2022'
) default charset = utf8;

/*adicionando a id que foi esquicida de proposito*/
alter table cursos
add column id int first;

alter table cursos
change column id idcursos int;


/*adicionando chave primaria no id*/
alter table cursos
add primary key(idcursos);

select * from cursos;
describe cursos;