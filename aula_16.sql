#Relacionamento de tabelas de muitos-para-muitos ou n-n

#criação da tabela para relacionar as tabelas gafanhoto e cursos
create table assiste_curso (
	id int not null auto_increment,
    data date,
    idgafanhoto int,
    idcurso int,
    primary key (id),
    foreign key (idgafanhoto) references gafanhotos(id),
    foreign key (idcurso) references cursos(idcurso)
) default charset = utf8;

#inserindo registros na tabela assiste_curso
insert into assiste_curso values
(default, '2014-03-01', '1', '2');

select * from assiste_curso;

#relacionando os dados das 3 tabelas existentes utilizando o JOIN
select g.nome, c.nome from gafanhotos g
join assiste_curso a
on g.id = a.idgafanhoto
join cursos c
on a.idcurso = c.idcurso;