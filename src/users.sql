USE videomino;


-- ADMINISTRADOR
-- DROP USER 'admin'@'localhost';
DROP USER IF EXISTS 'admin'@'localhost';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON videomino.* TO 'admin'@'localhost';
REVOKE DROP ON videomino.* FROM 'admin'@'localhost';


-- Create the user
DROP USER IF EXISTS 'funcionario'@'localhost';
CREATE USER 'funcionario'@'localhost' IDENTIFIED BY 'funcionario';

-- Grant SELECT privileges on the specified tables
GRANT SELECT ON videomino.Cliente TO 'funcionario'@'localhost';
GRANT SELECT ON videomino.Filme TO 'funcionario'@'localhost';
GRANT SELECT ON videomino.Venda TO 'funcionario'@'localhost';
GRANT SELECT ON videomino.Venda_filme TO 'funcionario'@'localhost';
GRANT SELECT ON videomino.Fornecedor TO 'funcionario'@'localhost';
GRANT SELECT ON videomino.funcionário TO 'funcionario'@'localhost';

-- Grant EXECUTE privileges on the specified procedures
GRANT EXECUTE ON PROCEDURE videomino.ClientesTable TO 'funcionario'@'localhost';
GRANT EXECUTE ON PROCEDURE videomino.VerificaFilmeStock TO 'funcionario'@'localhost';
GRANT EXECUTE ON PROCEDURE videomino.ComprasFornecedores TO 'funcionario'@'localhost';

-- CLIENTE 
-- DROP USER 'cliente'@'localhost';
DROP USER IF EXISTS 'cliente'@'localhost';
CREATE USER 'cliente'@'localhost' IDENTIFIED BY 'cliente';
GRANT SELECT ON videomino.Filme TO 'cliente'@'localhost';
GRANT SELECT ON videomino.Review TO 'cliente'@'localhost';
GRANT INSERT, UPDATE ON videomino.Cliente TO 'cliente'@'localhost';
GRANT EXECUTE ON PROCEDURE videomino.FilmesTable TO 'cliente'@'localhost';
GRANT EXECUTE ON PROCEDURE videomino.FilmesEntrePreços TO 'cliente'@'localhost';
GRANT EXECUTE ON PROCEDURE videomino.FilmeGenero TO 'cliente'@'localhost';
GRANT EXECUTE ON PROCEDURE videomino.OrdenaFilmesData TO 'cliente'@'localhost';
GRANT EXECUTE ON PROCEDURE videomino.OrdenaFilmesRating TO 'cliente'@'localhost';

DROP USER IF EXISTS 'fornecedor'@'localhost';
CREATE USER 'fornecedor'@'localhost' IDENTIFIED BY 'fornecedor';


FLUSH PRIVILEGES;