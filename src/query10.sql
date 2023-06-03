USE videomino; 

-- Consultar os clientes com idade compreendida entre 18 e 23 anos e que
-- tenham comprado filmes de terror mais que uma vez por parte do administrador

DELIMITER $$
CREATE PROCEDURE TopTerror ()
BEGIN
	SELECT c.username, c.nome, COUNT(vf.id_filme) AS total_compras
	FROM Cliente c
	INNER JOIN Venda v ON c.username = v.idCliente
	INNER JOIN Venda_filme vf ON v.idVenda = vf.id_venda
	INNER JOIN Filme f ON vf.id_filme = f.idFilme
	WHERE YEAR(CURDATE()) - YEAR(c.data_nascimento) BETWEEN 18 AND 23
	AND f.genero = 'Terror'
	GROUP BY c.username, c.nome
	HAVING COUNT(vf.id_filme) >= 1
	ORDER BY total_compras DESC;
END $$
DELIMITER ;

CALL TopTerror;

