/*
    1. Mostre a turma que inicia mais cedo;
    2. Apresente o maior código de matrícula;
    3. Mostre os instrutores ordenados por nome em ordem inversa;
    4. Apresente a média de peso dos alunos.
    5. Mostrar os alunos que tem mais de 40 anos;
 */
# 1a
SELECT
    *
FROM
    turma
WHERE
    horario = (
        SELECT
            MIN(horario)
        FROM
            turma;

);

# 1b
SELECT
    MIN(horario) AS 'Horário de Turma mais cedo'
FROM
    turma;

# 2
SELECT
    max(cod_matricula) AS 'Maior Código de Matrícula'
FROM
    matricula;

# 3
SELECT
    *
FROM
    instrutor
ORDER BY
    nome DESC;

# 4
SELECT
    AVG(peso) AS 'Média de Peso dos Alunos'
FROM
    aluno;

# 5a
SELECT
    *
FROM
    aluno
WHERE
    dt_nascimento < '1980-04-00';

# 5b
SELECT
    *
FROM
    aluno
WHERE
    (dt_nascimento - '2020-03-30') > 40;