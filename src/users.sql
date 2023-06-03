-- ADMINISTRADOR
-- DROP USER 'admin'@'localhost';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON Videomino.* TO 'admin'@'localhost';

-- FUNCIONARIO
-- DROP USER 'funcionario'@'localhost';
CREATE USER 'funcionario'@'localhost' IDENTIFIED BY 'funcionario';
GRANT SELECT ON Videomino.Cliente TO 'funcionario'@'localhost';
GRANT SELECT, INSERT, UPDATE ON Videomino.Filme TO 'funcionario'@'localhost';
GRANT SELECT ON Videomino.Review TO 'funcionario'@'localhost';
GRANT SELECT ON Videomino.Compra_filme TO 'funcionario'@'localhost';
GRANT EXECUTE ON PROCEDURE Videomino.ClientesTable TO 'funcionario'@'localhost';
GRANT EXECUTE ON PROCEDURE Videomino.VerificaFilmeStock TO 'funcionario'@'localhost';
GRANT EXECUTE ON PROCEDURE Videomino.ComprasFornecedores TO 'funcionario'@'localhost';

-- CLIENTE 
-- DROP USER 'cliente'@'localhost';
CREATE USER 'cliente'@'localhost' IDENTIFIED BY 'cliente';
GRANT SELECT ON Videomino.Filme TO 'cliente'@'localhost';
GRANT SELECT ON Videomino.Review TO 'cliente'@'localhost';
GRANT INSERT, UPDATE ON Videomino.Cliente TO 'cliente'@'localhost';
GRANT EXECUTE ON PROCEDURE Videomino.FilmesTable TO 'cliente'@'localhost';
GRANT EXECUTE ON PROCEDURE Videomino.FilmesEntrePreços TO 'cliente'@'localhost';
GRANT EXECUTE ON PROCEDURE Videomino.FilmeGenero TO 'cliente'@'localhost';
GRANT EXECUTE ON PROCEDURE Videomino.OrdenaFilmesData TO 'cliente'@'localhost';
GRANT EXECUTE ON PROCEDURE Videomino.OrdenaFilmesRating TO 'cliente'@'localhost';


CREATE USER 'fornecedor'@'localhost' IDENTIFIED BY 'fornecedor';


FLUSH PRIVILEGES;