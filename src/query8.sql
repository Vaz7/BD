USE videomino;

-- O administrador pode conhecer o top de filmes mais vendidos numa dada
-- semana, mês e ano

-- Top de filmes mais vendidos entre dois anos:
DELIMITER $$
CREATE PROCEDURE TopFilmesAno (IN Ano1 INT, IN Ano2 INT)
BEGIN
	SELECT vf.id_filme, f.nome, COUNT(vf.id_filme) AS total_vendas
	FROM Venda v
	INNER JOIN Venda_filme AS vf ON v.idVenda = vf.id_venda
	INNER JOIN Filme AS f ON vf.id_filme = f.idFilme
	WHERE YEAR(v.data) BETWEEN Ano1 AND Ano2
	GROUP BY vf.id_filme, f.nome
	ORDER BY total_vendas DESC;
END $$
DELIMITER ;

CALL TopFilmesAno (2022, 2023);


DELIMITER $$
CREATE PROCEDURE TopFilmesMes (IN Mes1 INT, IN Mes2 INT)
BEGIN
	SELECT vf.id_filme, f.nome, COUNT(vf.id_filme) AS total_vendas
	FROM Venda v
	INNER JOIN Venda_filme AS vf ON v.idVenda = vf.id_venda
	INNER JOIN Filme AS f ON vf.id_filme = f.idFilme
	WHERE MONTH(v.data) BETWEEN Mes1 AND Mes2
	GROUP BY vf.id_filme, f.nome
	ORDER BY total_vendas DESC;
END $$
DELIMITER ;

DROP PROCEDURE TopFilmesMes;

CALL TopFilmesMes (5,6);


