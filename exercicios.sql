#1 Uma lista com o nome de todas as mulheres
select * from gafanhotos
where sexo = 'F';

#2 Uma lista com os dados de todos aqueles nascidos entre 01/01/2000 e 31/12/2015
select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31';

#3 Uma lista com o nome de todos os homens que trabalham como programadores
select * from gafanhotos
where sexo = 'M' and profissao = 'Programador';

#4 Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciado com a letra J
select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

#5 Uma lista com o nome e nacionalidade de todos os homens que têm silva no nome, não nasceram no Brasil e pesam menos de 100kg
select nome, nacionalidade, peso from gafanhotos
where nome like '%silva%' and nacionalidade != 'Brasil' and peso < '100' and sexo = 'M';

#6 Qual é a maior altura entre os homens que moram no Brasil?
select max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';

#7 Qual é a média de peso das pessoas cadastradas?
select avg(peso) from gafanhotos;

#8 Qual é o menor peso entre as mulheres que nasceram fora do Brasil e entre 01/01/1990 e 31/12/200?
select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

#Quantas mulheres têm mais de 1.90m de altura?
select count(*) from gafanhotos
where sexo = 'F' and altura > '1.90';