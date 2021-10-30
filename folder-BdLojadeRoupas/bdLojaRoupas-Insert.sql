USE bdLojaRoupas

INSERT tbCliente(nomeCliente, idadeCliente)
VALUES ('Maria Joaquina Ferreira','20')
	, ('Rafaela Santos da Silva', '22')
	, ('Lucas Vinicius da Silva', '23')
	, ('Laura Seraphim Azevedo','21')
	, ('Victor Schiavon', '24')

SELECT * FROM tbCliente


INSERT tbVendedor(nomeVendedor)
VALUES ('João Santana')
	, ('Raquel Torres')

SELECT * FROM tbVendedor


INSERT tbFabricante(nomeFabricante)
VALUES ('Malwee')
	, ('Marisol')
	, ('Cia da Malha')

SELECT * FROM tbFabricante

INSERT tbFuncionario(nomeFuncionario, idadeFuncionario, dataAdmissaoFuncionario, salarioFuncionario)
VALUES ('Luana Aparecida', '30', '12/03/2012', 2500.10)
	, ('Alan Ferreira', '19', '02/03/2018', 1500.12)

SELECT * FROM tbFuncionario


--Insert com FK




INSERT tbVenda (dataVenda, totalVenda, codCliente, codVendedor)
VALUES ('03/02/2019', 439.06, 1, 1)
	, ('02/02/2019', 363.04, 2, 1)
	, ('03/04/2018', 437.00, 3, 1)
	, ('05/06/2019', 1019.05, 4, 2)
	,('06/07/2019', 299.07, 5, 2)

SELECT * FROM tbVenda


INSERT tbProduto (nomeProduto, precoProduto, dataEntradaProduto, estoqueProduto, codFuncionario, codFabricante)
VALUES ('Calça skinny Sarja', 99.90, '03/03/2018', '500', 1,1)
	, ('Vestido Listrado Viscose', 139.90, '02/03/2018', '2000', 1,1)
	, ('Camiseta Good Times Malha', 72.90, '03/03/2018', '1000', 1,1)
	, ('Camiseta Tigor Branca', 54.40, '05/05/2019', '30', 2,2)
	, ('Conjunto Tiger Collection', 159.00, '06/05/2019', '90', 2,2)
	, ('Vestido Lilica Repilica', 119.00, '04/06/2019', '230', 2,2)
	, ('Pijama Short Doll', 99.95, '05/07/2019', '50', 1,3)
	, ('Blusa Moletom Masculina', 104.95, '02/07/2019', '300', 1,3)
	, ('Calça Moletom Masculina Brazzluca', 89.95, '03/07/2019', '260', 1,3)

SELECT * FROM tbProduto


INSERT tbItensVenda (qtItensVenda, subTotalItensVenda, codVenda, codProduto)
VALUES ('3', 299.07, 1, 1)
	, ('1', 139.90, 1, 2)
	, ('2', 145.08, 2, 3)
	, ('4', 217.06, 2, 4)
	, ('2', 318.00, 3, 5)
	, ('1', 119.00, 3, 6)
	, ('6', 599.07, 4, 7)
	, ('4', 419.08, 4, 8)
	, ('2', 179.90, 5, 9)
	, ('2', 119.08, 5, 1)

SELECT * FROM tbItensVenda