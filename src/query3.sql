USE videomino;

-- consulta de todos os filmes por parte de qualquer utilizador (aqui acho que não há restriçoes)

DELIMITER $$
CREATE PROCEDURE FilmesTable ()
BEGIN
	SELECT * FROM Filme;
END $$
DELIMITER ;

CALL FilmesTable;