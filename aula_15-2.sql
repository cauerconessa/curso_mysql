#trabalhando com o JOIN
##Relacionamento de tabelas de um-para-muitos ou 1-n
select nome, cursopreferido  from gafanhotos;

select nome, ano from cursos;

select * from gafanhotos;

#sempre que usar o JOIN utilizar o ON
#INNER JOIN é uma junção somente com as relações
select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

#OUTER JOIN ou LEFT JOIN
#dando preferência a tabela gafanhotos a esquerda
select g.nome, g.cursopreferido, c.nome, c.ano
#from gafanhotos as g left outer join cursos as c
from gafanhotos as g left join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

#OUTER JOIN ou RIGHT JOIN
#dando preferência a tabela cursos a direita
select g.nome, g.cursopreferido, c.nome, c.ano
#from gafanhotos as g right outer join cursos as c
from gafanhotos as g right join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;