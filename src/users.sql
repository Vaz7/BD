USE videomino;

-- ADMINISTRADOR
-- DROP USER 'admin'@'localhost';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON videomino.* TO 'admin'@'localhost';

-- FUNCIONARIO
-- DROP USER 'funcionario'@'localhost';
CREATE USER 'funcionario'@'localhost' IDENTIFIED BY 'funcionario';
GRANT SELECT ON videomino.Cliente TO 'funcionario'@'localhost';
GRANT SELECT ON videomino.Filme TO 'funcionario'@'localhost';
GRANT SELECT ON videomino.Venda TO 'funcionario'@'localhost';
GRANT SELECT ON videomino.Venda_filme TO 'funcionario'@'localhost';
GRANT SELECT ON videomino.Fornecedor TO 'funcionario'@'localhost';
GRANT SELECT ON videomino.Funcionario TO 'funcionario'@'localhost';
GRANT EXECUTE ON PROCEDURE videomino.ClientesTable TO 'funcionario'@'localhost';
GRANT EXECUTE ON PROCEDURE videomino.VerificaFilmeStock TO 'funcionario'@'localhost';
GRANT EXECUTE ON PROCEDURE videomino.ComprasFornecedores TO 'funcionario'@'localhost';

-- CLIENTE 
-- DROP USER 'cliente'@'localhost';
CREATE USER 'cliente'@'localhost' IDENTIFIED BY 'cliente';
GRANT SELECT ON videomino.Filme TO 'cliente'@'localhost';
GRANT SELECT ON videomino.Review TO 'cliente'@'localhost';
GRANT INSERT, UPDATE ON videomino.Cliente TO 'cliente'@'localhost';
GRANT EXECUTE ON PROCEDURE videomino.FilmesTable TO 'cliente'@'localhost';
GRANT EXECUTE ON PROCEDURE videomino.FilmesEntrePreços TO 'cliente'@'localhost';
GRANT EXECUTE ON PROCEDURE videomino.FilmeGenero TO 'cliente'@'localhost';
GRANT EXECUTE ON PROCEDURE videomino.OrdenaFilmesData TO 'cliente'@'localhost';
GRANT EXECUTE ON PROCEDURE videomino.OrdenaFilmesRating TO 'cliente'@'localhost';


CREATE USER 'fornecedor'@'localhost' IDENTIFIED BY 'fornecedor';


FLUSH PRIVILEGES;