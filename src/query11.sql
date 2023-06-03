USE videomino;

-- Consultar todos os registos de compras de material para a loja entre
-- determinadas datas por parte dos funcionários

DELIMITER $$
CREATE PROCEDURE ComprasFornecedores (IN data1 DATE, IN data2 DATE)
BEGIN
	SELECT c.idCompra, c.data_criacao, c.n_artigos, c.preco_total, f.idFuncionário, f.nome AS nome_funcionario
	FROM Compra c
	INNER JOIN Funcionário f ON c.idFornecedor = f.idFuncionário
	WHERE c.data_criacao BETWEEN data1 AND data2 -- Substitua com as datas desejadas
	ORDER BY c.data_criacao;
END $$
DELIMITER ;

CALL ComprasFornecedores ('2023-01-01', CURDATE());