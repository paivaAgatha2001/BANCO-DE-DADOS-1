CREATE DATABASE bdImobiliaria

USE bdImobiliaria

CREATE TABLE tbTipo(
	codTipo INT PRIMARY KEY IDENTITY(1,1)
	,  descTipo VARCHAR(20) NOT NULL
)

CREATE TABLE tbFiador(
	codFiador INT PRIMARY KEY IDENTITY(1,1)
	, nomeFiador VARCHAR(60) NOT NULL
	, cpfFiador CHAR(14) NOT NULL
)

CREATE TABLE tbCliente(
	codCliente INT PRIMARY KEY IDENTITY(1,1)
	, nomeCliente VARCHAR(60) NOT NULL
	, cpfCliente CHAR(14) NOT NULL
	, rgCliente VARCHAR(30) NOT NULL
)

CREATE TABLE tbVendedor(
	codVendedor INT PRIMARY KEY IDENTITY(1,1)
	, nomeVendedor VARCHAR(60) NOT NULL
)
CREATE TABLE tbProprietario(
	codProprietario INT PRIMARY KEY IDENTITY(1,1)
	, nomeProprietario VARCHAR(60) NOT NULL
	, cpfProprietario CHAR(14) NOT NULL
)

--tabelas com FK 

CREATE TABLE tbImovel(
	codImovel INT PRIMARY KEY IDENTITY(1,1)
	, logImovel VARCHAR(50) NOT NULL
	, numImovel INT NOT NULL
	, compImovel VARCHAR(10)
	, cepImovel CHAR(9) NOT NULL
	, bairroImovel VARCHAR(30) NOT NULL
	, cidadeImovel VARCHAR(25) NOT NULL
	, codProprietario INT FOREIGN KEY REFERENCES tbProprietario(codProprietario)
	, codTipo INT FOREIGN KEY REFERENCES tbTipo(codTipo)
)

CREATE TABLE tbVenda(
	codVenda INT PRIMARY KEY IDENTITY(1,1)
	, valorVenda SMALLMONEY NOT NULL
	, dataVenda SMALLDATETIME NOT NULL
	, codCliente INT FOREIGN KEY REFERENCES tbCliente(codCliente)
	, codImovel INT FOREIGN KEY REFERENCES tbImovel(codImovel)
	, codVendedor INT FOREIGN KEY REFERENCES tbVendedor(codVendedor)
)

CREATE TABLE tbLocacao(
	codLocacao INT PRIMARY KEY IDENTITY(1,1)
	, dataLocacao SMALLDATETIME NOT NULL
	, valorLocacao SMALLMONEY NOT NULL
	, codCliente INT FOREIGN KEY REFERENCES tbCliente(codCliente)
	, codImovel INT FOREIGN KEY REFERENCES tbImovel(codImovel)
	, codFiador INT FOREIGN KEY REFERENCES tbFiador(codFiador)
)