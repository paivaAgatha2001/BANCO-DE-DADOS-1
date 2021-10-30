USE bdLojaRoupas

UPDATE tbFabricante 
SET nomeFabricante = 'Turma da Malha'
WHERE codFabricante = 3

SELECT * FROM tbFabricante
--Alterado de Cia da Malha para Turma da Malha

UPDATE tbVenda
SET totalVenda = totalVenda - (totalVenda*10.0/100.0)
WHERE codCliente = 1

SELECT * FROM tbVenda
--ALterado com desconto de 10% o cliente 1 (maria joaquina), de 439.06 para 395.15


UPDATE tbProduto
SET precoProduto = precoProduto + (precoProduto*20.0/100.0)
WHERE codFabricante = 2

SELECT * FROM tbProduto
--Aumento de 20% em  pre�o de produtos do fabricante com c�digo 2


UPDATE tbProduto
SET estoqueProduto = estoqueProduto - 10
WHERE codProduto = 3

SELECT * FROM tbProduto
--Diminui 10 unidades do 3� produto do estoque


-- REMOVE/DELETE


DELETE FROM tbItensVenda
WHERE codItensVenda=4

SELECT * FROM tbItensVenda
--Remover segundo item de venda da venda de c�digo 2 

DELETE FROM tbItensVenda
WHERE codVenda = 3

SELECT * FROM tbItensVenda
--Remove todos os itens da venda com c�digo 3



DELETE FROM tbFabricante
WHERE codFabricante = 1

SELECT * FROM tbFabricante
-- N�o deu certo pois o fabricante est� ligado a tabela de produto como chave estrangeira. 
--ou seja, terei que apagar primeiro todos os produtos com c�digo 1 para depois tentar apagar o fabricante
