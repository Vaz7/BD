USE videomino;

-- Qualquer utilizador pode pedir ao sistema para ordenar de forma crescente
-- ou decresencente os filmes de acordo com a sua data de lançamento
-- ou rating associado

DELIMITER $$
CREATE PROCEDURE OrdenaFilmesData (IN ordenacao VARCHAR(4))
BEGIN 
    DECLARE ordenar_por VARCHAR(4);

    IF ordenacao = 'ASC' THEN
        SET ordenar_por = 'ASC';
    ELSE
        SET ordenar_por = 'DESC';
    END IF;

    SET @sql = CONCAT('SELECT * FROM Filme ORDER BY data ', ordenar_por); -- variavel temporária
    PREPARE stmt FROM @sql; -- tipo malloc 
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END $$
DELIMITER ;

CALL OrdenaFilmesData('DESC');



DELIMITER $$
CREATE PROCEDURE OrdenaFilmesRating (IN ordenacao VARCHAR(4))
BEGIN 
    DECLARE ordenar_por VARCHAR(4);

    IF ordenacao = 'ASC' THEN
        SET ordenar_por = 'ASC';
    ELSE
        SET ordenar_por = 'DESC';
    END IF;

    SET @sql = CONCAT('SELECT Filme.*, Review.rating FROM Filme 
					  INNER JOIN Review ON Review.id_Filme = Filme.idFilme ORDER BY Review.rating ', ordenar_por); -- variavel temporária
    PREPARE stmt FROM @sql; -- tipo malloc 
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END $$
DELIMITER ;

CALL OrdenaFilmesRating('DESC');