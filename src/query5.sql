USE videomino;

-- filtrar os filmes por género

DELIMITER $$
CREATE PROCEDURE FilmeGenero (IN gender VARCHAR(50))
BEGIN
	SELECT *
    FROM Filme
    WHERE genero = gender;
END $$
DELIMITER ;

CALL FilmeGenero ('Ação');