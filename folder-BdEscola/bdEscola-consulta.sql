USE bdEscola

SELECT rgAluno, dataNascAluno FROM tbAluno
WHERE naturalidadeAluno = 'SP'
--1- Listar o nome, rg e data de aniversário dos alunos nascidos em Sp

SELECT nomeAluno, rgAluno FROM tbAluno
WHERE nomeAluno LIKE 'P%'
--2-Listar o nome e o rg dos aluno que começam com P

SELECT nomeCurso FROM tbCurso
WHERE cargaHorariaCurso > 2000
--3- Listar o nome dos cursos cuja carga horaria é maior q 2000

SELECT nomeAluno, rgAluno FROM tbAluno
WHERE nomeAluno LIKE '%Silva'
--4- Listar o nome e o rg de todo os aluno q tem sobrenome silva

SELECT nomeAluno, dataNascAluno FROM tbAluno
WHERE MONTH (dataNascAluno) = 3
--5- Listar o nome e a data de nasciemneto dos alunos que fazem aniversário em março

SELECT codAluno, dataMatricula FROM tbMatricula
WHERE MONTH(dataMatricula) = 5
--6- Listar o cod e a data da matricula dos alunos matriculados em maio de qualquer ano


SELECT codAluno FROM tbMatricula
WHERE codTurma = 1 
--7- Listar o código dos alunos matriculados no curso de inglês

SELECT codAluno FROM tbMatricula
WHERE codTurma = 2
--8-Listar o código dos aluno matriculados na turma 1AA



SELECT codAluno, nomeAluno, dataNascAluno, rgAluno, naturalidadeAluno FROM tbAluno
--9-Listar todos os dados de todos os alunos


SELECT codTurma, nomeTurma, horarioTurma, codCurso FROM tbTurma
--10-Listar todos os dados de todas as turmas