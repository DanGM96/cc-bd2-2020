/*
    1. Mostre o nome de todos os instrutores que possuem idade maior que 35 anos, separados de acordo com a titulação e ordenados em ordem alfabética.
    2. Apresente a quantidade de alunos que tem altura entre 1,60 mts-1,80 mts e entre 1,81mts-2,00 mts. (Utilize o parâmetro Between). Limite para mostrar somente o 2 alunos em cada grupo, pulando o primeiro deles.
    3. Mostre todos os alunos que tem nome começando com a letra B ou terminando ES e nomeie a coluna como Alunos.
 */
# 1
SELECT
    nome
FROM
    instrutor
WHERE
    nascimento < '1985-04-06'
GROUP BY
    titulacao,
    nome
ORDER BY
    nome;

# 2
SELECT
    nome
FROM
    aluno
WHERE
    altura BETWEEN 1.60
    AND 1.80
    OR altura BETWEEN 1.81
    AND 2.00
LIMIT
    2 OFFSET 1;

# 3
SELECT
    nome AS Alunos
FROM
    aluno
WHERE
    nome LIKE 'B%'
    OR nome LIKE '%es';
