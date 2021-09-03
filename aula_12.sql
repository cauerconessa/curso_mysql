#COMANDO SELECT PARTE 2

select * from cursos
where nome like 'P%';

select * from cursos
where nome like '%A';

select * from cursos
where nome like '%A%';

select * from cursos
where nome not like '%A%';

select * from cursos
where nome like 'ph%p_';

select * from cursos
where nome like 'p_p%';

select * from gafanhotos
where nome like '%_silva%';

select nacionalidade from gafanhotos;

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select distinct carga from cursos
order by carga;

select count(*) from cursos;

select count(*) from cursos
where carga > 40;

select max(totaulas) from cursos
where ano = '2016';

select nome, min(totaulas) from cursos
where ano = '2016';

select sum(totaulas) from cursos
where ano = '2016';

select avg(totaulas) from cursos
where ano = '2016';