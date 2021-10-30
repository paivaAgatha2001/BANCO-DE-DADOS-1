USE bdRh

INSERT tbDepto(nomeDepto)
VALUES ('Comercial')
	, ('Diretoria')
	, ('Rh')
	, ('TI')
	, ('Produção')

SELECT * FROM tbDepto


INSERT tbFuncionario (nomeFuncionario, cpfFuncionario, rgFuncionario,
		dtNascFuncionario, salarioFuncionario, idDepto)
VALUES ('Maggie Oconnel', '111.111.111-11','123456',
		'03/09/1980', 1490.90, 1)
	, ('Billie Eilish Pirate', '222.222.222-22', '654321', 
		'10/12/2000', 4500.50, 2)
	, ('Patrick Oconnel', '333.333.333-33', '0987643',
		'07/01/1988', 5600.90, 3)
	, ('Finneas Pirate', '444.444.444-44', '75738',
		'09/02/1990', 7500.70, 4)
	, ('Stanley Pirate', '555.555.555-55', '673883',
		'12/02/1999', 1300.90, 5)

SELECT * FROM tbFuncionario

INSERT tbConjuge (nomeConjuge,idFuncionario)
VALUES ('Patrick Oconnel', 1)
	, ('Richard Smith', 2)
	, ('Maggie Oconnel', 3)
	, ('Claudia Sulewski', 4)
	, ('Louise Jones', 5)

SELECT * FROM tbConjuge

INSERT tbFoneFuncionario (numFoneFuncionario, idFuncionario)
VALUES ('11 95418-3818', 1)
	, ('11 64737-6473', 2)
	, ('11 54738-7890', 3)
	, ('11 34556-0987', 4)
	, ('11 67849-1234', 5)

SELECT * FROM tbFoneFuncionario

INSERT tbDependente (nomeDependente, dtNascDependente, idFuncionario)
VALUES ('Charlotte Oconnel', '03/02/2001', 1)
	, ('Jack Pirate', '02/01/2021', 2)
	, ('John Oconnel', '05/08/2008', 3)
	, ('Hayley Stevens', '09/06/2010', 4)
	, ('Tatiana Mansley Pirate', '10/04/2012', 5)

SELECT * FROM tbDependente

INSERT tbProjeto (nomeProjeto, cargaHorariaProjeto)
VALUES ('Treinamentos', '800')
	, ('Revisão da carteira de benefícios', '1200')
	, ('Comunicação interna', '2004')
	, ('Definição de cargos', '1250')
	, ('Gerenciamento de performance', '1300')
SELECT * FROM tbProjeto

INSERT tbFuncionarioProjeto (qtHorasFuncionarioProjeto,idFuncionario, idProjeto)
VALUES ('400', 1, 1)
	, ('900', 2, 2)
	, ('1000', 3, 3)
	, ('1200', 4, 4)
	, ('1290', 5, 5)
SELECT * FROM tbFuncionarioProjeto
