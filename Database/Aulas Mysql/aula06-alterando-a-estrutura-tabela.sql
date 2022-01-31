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