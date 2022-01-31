/* creando o banco de dados*/
create database cadastro;

/*selecionando o banco de dados sem precisar clicar*/
use cadatro;

/*Creando a tabela*/
create table pessoas(
	nome varchar(30),
	idade tinyint (3),
	sexo char(1),
	peso float,
	altura float,
	nacionalidade varchar(20)
);

/*descrevendo a tabela*/
describe pessoas;