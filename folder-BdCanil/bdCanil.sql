CREATE DATABASE bdCanil
--DROP DATABASE bdCanil

USE bdCanil

CREATE TABLE tbCandidato(
	codCandidato INT PRIMARY KEY IDENTITY(1,1)
	, nomeCandidato VARCHAR(60) NOT NULL
	, cpfCandidato CHAR(14) NOT NULL
	, logradouroCandidato VARCHAR(50) NOT NULL
	, numLogCandidato INT NOT NULL
	, compCandidato VARCHAR(10)
	, bairroCandidato VARCHAR(30) NOT NULL
	, cepCandidato CHAR(9) NOT NULL
	, cidadeCandidato VARCHAR(25) NOT NULL
)

CREATE TABLE tbFoneCandidato(
	codFoneCandidato INT PRIMARY KEY IDENTITY(1,1)
	, numFone VARCHAR(10) NOT NULL
	, codCandidato INT FOREIGN KEY REFERENCES tbCandidato(codCandidato)
)

CREATE TABLE tbAdocao(
	codAdocao INT PRIMARY KEY IDENTITY(1,1)
	, dataAdocao SMALLDATETIME NOT NULL
	, codCandidato INT FOREIGN KEY REFERENCES tbCandidato(codCandidato)
)

CREATE TABLE tbRaca(
	codRaca INT PRIMARY KEY IDENTITY(1,1)
	, nomeRaca VARCHAR(20)NOT NULL
)

CREATE TABLE tbDog(
	codDog INT PRIMARY KEY IDENTITY(1,1)
	, nomeDog VARCHAR(30) NOT NULL
	, idadeDog INT NOT NULL
	, estadoDog VARCHAR(50) NOT NULL
	, codRaca INT FOREIGN KEY REFERENCES tbRaca(codRaca)
)

CREATE TABLE tbAdocaoDog(
	codAdocaoDog INT PRIMARY KEY IDENTITY(1,1)
	, codAdocao INT FOREIGN KEY REFERENCES tbAdocao(codAdocao)
	, codDog INT FOREIGN KEY REFERENCES tbDog(codDog)
)

CREATE TABLE tbDoenca(
	codDoenca INT PRIMARY KEY IDENTITY(1,1)
	, nomeDoenca VARCHAR(30) NOT NULL
)

CREATE TABLE tbProntuario(
	codProntuario  INT PRIMARY KEY IDENTITY(1,1)
	, codDoenca INT FOREIGN KEY REFERENCES tbDoenca(codDoenca)
	, codDog INT FOREIGN KEY REFERENCES tbDog(codDog)
)

CREATE TABLE tbVacina(
	codVacina INT PRIMARY KEY IDENTITY(1,1)
	, nomeVacina VARCHAR(40) NOT NULL
)

CREATE TABLE tbCarteira(
	codCarteira INT PRIMARY KEY IDENTITY(1,1)
	, dataAp SMALLDATETIME NOT NULL
	, codVacina INT FOREIGN KEY REFERENCES tbVacina(codVacina)
	, codDog INT FOREIGN KEY REFERENCES tbDog(codDog)
)