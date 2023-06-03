USE videomino; 

-- Consultar as vendas associadas a cada funcionário num dado período
-- de tempo por parte do administrador

DELIMITER $$
CREATE PROCEDURE VendasFuncionario (IN idf INT, IN data1 DATE, IN data2 DATE)
BEGIN
	SELECT v.idVenda, v.preco_final, v.data
	FROM Venda v
	INNER JOIN Funcionário AS f ON f.idFuncionário = v.idFuncionário
	WHERE v.data >= data1 AND v.data <= data2 AND f.idFuncionário = idf
	-- GROUP BY f.idFuncionário, f.nome
	ORDER BY v.data DESC;
END $$
DELIMITER ;

DROP PROCEDURE VendasFuncionario;

CALL VendasFuncionario(1, '2022-01-01', CURDATE());