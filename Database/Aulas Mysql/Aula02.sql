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
    