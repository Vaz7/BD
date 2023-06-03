USE videomino;


-- consulta de todos os clientes por parte de um funcionário, falta fazer a parte de limitar aos funcionários

DELIMITER $$
CREATE PROCEDURE ClientesTable ()
BEGIN
	SELECT * FROM Cliente;
END $$
DELIMITER ;

DROP PROCEDURE ClientesTable;

CALL ClientesTable;