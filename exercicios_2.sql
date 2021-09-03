#1 Uma lista com as profissões dos cadastrados e seus respectivos quantitativos
select profissao, count(*) from gafanhotos
group by profissao
order by count(*);

#2 Quantos homens e mulheres nasceram após 01/01/2005?
select sexo, count(sexo) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

#3 Uma lista com os cadastrados que nasceram fora do Brasil, mostrando o país de origem 
#e o total de pessoas nascidas lá. Só nos interessa os países que tiverem mais de 3 pessoas.
select nacionalidade, count(nacionalidade) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(nacionalidade) > 3;

#4 Uma lista agrupada pela altura das pessoas, mostrando quantas pesam mais de 100kg e que estão
#acima da média de altura de todos os cadastrados
select avg(altura) from gafanhotos;

select altura, peso, count(peso) from gafanhotos
where peso > '100'
group by altura
having altura > (select avg(altura) from gafanhotos)
order by altura;