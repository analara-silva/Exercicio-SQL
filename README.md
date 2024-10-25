# Exercícios de SQL

## Exercício 1
Utilize o comando `SUM` para calcular o total de salários pagos aos funcionários em cada departamento.

![Resolução do exercicio 01](imgs/exercicio%2001.png)

## Exercício 2
Utilize `AVG` para determinar a média salarial dos funcionários da Tech Solutions.

![Resolução do exercicio 02](imgs/exercicio%2002.png)
## Exercício 3
Use `COUNT` para contar quantos funcionários estão alocados em cada projeto.

![Resolução do exercicio 03](imgs/exercicio%2003.png)

## Joins em SQL

### Exercício 4
Crie uma consulta que utilize `INNER JOIN` para listar todos os funcionários e os projetos em que estão trabalhando.

![Resolução do exercicio 04](imgs/exercicio%2004.png)

### Exercício 5
Utilize `LEFT JOIN` para listar todos os departamentos e os funcionários que pertencem a eles, mostrando também os departamentos sem funcionários.

![Resolução do exercicio 05](imgs/exercicio%2005.png)

### Exercício 6
**Combinação de Dados com LEFT JOIN e RIGHT JOIN**  
Contexto: O programador precisa combinar dados de funcionários e projetos para obter uma visão geral das alocações. Como o MySQL não suporta `FULL OUTER JOIN`, você deve usar uma combinação de `LEFT JOIN` e `RIGHT JOIN` para obter todos os registros de ambas as tabelas, mostrando os que não têm correspondência.  
Tarefa: Escreva uma consulta que utilize `LEFT JOIN` e `RIGHT JOIN` para combinar dados de funcionários e projetos, exibindo todos os registros, mesmo que não haja correspondência.

![Resolução do exercicio 06](imgs/exercicio%2006.png)

## Operadores Lógicos

### Exercício 7
Escreva uma consulta utilizando `AND` e `OR` para encontrar funcionários com salário superior a R$ 5.000 ou que trabalham no departamento de Tecnologia da Informação.

![Resolução do exercicio 07](imgs/exercicio%2007.png)

### Exercício 8
Utilize o operador `NOT` para listar todos os funcionários que não estão alocados em nenhum projeto.

![Resolução do exercicio 08](imgs/exercicio%2008.png)

## Subconsultas

### Exercício 9
Crie uma subconsulta que retorna os nomes dos funcionários cujo salário é maior do que a média salarial da empresa.

![Resolução do exercicio 09](imgs/exercicio%2009.png)

### Exercício 10
Use uma subconsulta correlacionada para listar os departamentos que têm funcionários com salários acima de R$ 6.000.

![Resolução do exercicio 10](imgs/exercicio%2010.png)

## Funções de Agregação com GROUP BY

### Exercício 11
Utilize `GROUP BY` para agrupar os funcionários por departamento e calcular a média salarial em cada departamento.

![Resolução do exercicio 11](imgs/exercicio%2011.png)

### Exercício 12
Use `HAVING` para filtrar os departamentos que têm mais de 5 funcionários.

![Resolução do exercicio 12](imgs/exercicio%2012.png)
