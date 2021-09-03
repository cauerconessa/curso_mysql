desc pessoas; #descrição dos campos da tabela

#renomeando tabela
alter table pesssoas
rename to gafanhotos;

#adicionando novas colunas a tabela
alter table pessoas
add column profissao varchar(10);

#deletando colunas da tabela
alter table pessoas
drop column profissao;

#mudando a posião da coluna na tabela
alter table pessoas
add codigo int first;

alter table pessoas
add column profissao varchar(10) after nome;

#modificando colunas
alter table pessoas
modify column profissao varchar(20) not null default ' ';

#renomeando colunas
alter table pessoas
change column profissao prof varchar(20) not null default ' ';

select * from pessoas;

create table if not exists cursos (
	nome varchar(30) not null unique,
    descricao text,
    carga int unsigned,
    totaulas int unsigned,
    ano year default '2021'
) default charset = utf8;

alter table cursos
add idcurso int first;

alter table cursos
add primary key (idcurso);

desc cursos;

#deletando tabelas
create table if not exists teste (
	id int,
    nome varchar(10),
    idade int
);

insert into teste values
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '37');

drop table if exists teste;