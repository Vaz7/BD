-- script para mostrar que as permissoes do cliente funcionam
USE videomino;

-- este tem permissao
CALL OrdenaFilmesRating('DESC');

-- este nao tem permissao
CALL ComprasFornecedores ('2023-01-01', CURDATE());