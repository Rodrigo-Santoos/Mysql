/*adicionando uma nova coluna*/
alter table pessoas
add column profissao varchar(10);

/*dropando coluna*/
alter table pessoas
drop column profissao;

/*descrevendo a tabela*/
describe pessoas;
