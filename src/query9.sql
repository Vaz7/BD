USE videomino; 

-- O administrador pode conhecer quais os clientes que mais filmes compraram
-- a partir de determinada data, por ordem decrescente

DELIMITER $$
CREATE PROCEDURE TopClientePeriodo (IN dataesc DATETIME)
BEGIN
	SELECT cliente.username, cliente.nome, COUNT(venda_filme.id_filme) AS total_compras
	FROM Venda venda
	INNER JOIN Venda_filme AS venda_filme ON venda.idVenda = venda_filme.id_venda
	INNER JOIN Cliente cliente ON venda.idCliente = cliente.username
	WHERE venda.data >= dataesc
	GROUP BY cliente.username, cliente.nome
	ORDER BY total_compras DESC;
END $$
DELIMITER ;

CALL TopClientePeriodo ('2022-01-01');
