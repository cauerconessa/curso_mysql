#COMANDO SELECT PARTE 3

select carga, count(nome) from cursos
group by carga;

select carga, count(nome) from cursos where totaulas = 30
group by carga;

select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*) desc;

select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);

