USE videomino;

-- consulta de todos os funcionários por parte do administrador, falta fazer a parte de limitar o acesso ao admin


DELIMITER $$
CREATE PROCEDURE FuncionariosTable ()
BEGIN
	SELECT * FROM Funcionário;
END $$
DELIMITER ;

CALL FuncionariosTable;