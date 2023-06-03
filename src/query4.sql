USE videomino;


DELIMITER $$
CREATE PROCEDURE FilmesEntrePreços (IN preco1 INT, IN preco2 INT)
BEGIN
	SELECT * 
    FROM Filme 
    WHERE preco BETWEEN preco1 AND preco2;
END $$
DELIMITER ;

CALL FilmesEntrePreços (9, 10);

