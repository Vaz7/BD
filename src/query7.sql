USE videomino;

-- Os funcionários podem verificar no sistema o stock de dado filme


DELIMITER $$
CREATE PROCEDURE VerificaFilmeStock (IN movie INT)
BEGIN 
	SELECT idFilme, nome, stock
    FROM Filme
    WHERE idFilme = movie;
END $$
DELIMITER ;

DROP PROCEDURE VerificaFilmeStock;

CALL VerificaFilmeStock (1);
