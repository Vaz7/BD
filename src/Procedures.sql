USE videomino;
-- ------------------------------------------------------------------------------------------
-- (QUERY 1) -> consulta de todos os clientes por parte de um Funcionário
-- ------------------------------------------------------------------------------------------

DELIMITER $$
CREATE PROCEDURE ClientesTable ()
BEGIN
	SELECT * FROM ClienteView;
END $$
DELIMITER ;

-- DROP PROCEDURE ClientesTable;
-- CALL ClientesTable;

-- ------------------------------------------------------------------------------------------
-- (QUERY 2) -> consulta de todos os funcionários por parte do administrador
-- ------------------------------------------------------------------------------------------

DELIMITER $$
CREATE PROCEDURE FuncionariosTable ()
BEGIN
	SELECT * FROM Funcionário;
END $$
DELIMITER ;

-- CALL FuncionariosTable;

-- ------------------------------------------------------------------------------------------
-- (QUERY 3) -> consulta de todos os filmes por parte de qualquer utilizador
-- ------------------------------------------------------------------------------------------

DELIMITER $$
CREATE PROCEDURE FilmesTable ()
BEGIN
	SELECT * FROM FilmeView;
END $$
DELIMITER ;

-- CALL FilmesTable;


-- ------------------------------------------------------------------------------------------
-- (QUERY 4) -> consulta de todos os filmes que se encontram entre um intervalo de preços
-- ------------------------------------------------------------------------------------------

DELIMITER $$
CREATE PROCEDURE FilmesEntrePreços (IN preco1 INT, IN preco2 INT)
BEGIN
	SELECT * 
    FROM Filme 
    WHERE preco BETWEEN preco1 AND preco2;
END $$
DELIMITER ;

-- CALL FilmesEntrePreços (9, 10);


-- ------------------------------------------------------------------------------------------
-- (QUERY 5) -> filtrar os filmes por género
-- ------------------------------------------------------------------------------------------

DELIMITER $$
CREATE PROCEDURE FilmeGenero (IN gender VARCHAR(50))
BEGIN
	SELECT *
    FROM Filme
    WHERE genero = gender;
END $$
DELIMITER ;

-- CALL FilmeGenero ('Ação');

-- ------------------------------------------------------------------------------------------
-- (QUERY 6) -> Qualquer utilizador pode pedir ao sistema para ordenar de forma crescente
-- ou decresencente os filmes de acordo com a sua data de lançamento ou rating associado
-- ------------------------------------------------------------------------------------------

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

-- CALL OrdenaFilmesData('DESC');

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

-- CALL OrdenaFilmesRating('DESC');


-- ------------------------------------------------------------------------------------------
-- (QUERY 7) -> -- Os funcionários podem verificar no sistema o stock de dado filme
-- ------------------------------------------------------------------------------------------


DELIMITER $$
CREATE PROCEDURE VerificaFilmeStock (IN movie INT)
BEGIN 
	SELECT idFilme, nome, stock
    FROM Filme
    WHERE idFilme = movie;
END $$
DELIMITER ;

-- DROP PROCEDURE VerificaFilmeStock;

-- CALL VerificaFilmeStock (1);


-- ------------------------------------------------------------------------------------------
-- (QUERY 8) -> -- -- Top filmes mais vendidos entre dois anos ou entre dois meses
-- ------------------------------------------------------------------------------------------


DELIMITER $$
CREATE PROCEDURE TopFilmesAno (IN Ano1 INT, IN Ano2 INT)
BEGIN
	SELECT vf.id_filme, f.nome, COUNT(vf.id_filme) AS total_vendas
	FROM Venda v
	INNER JOIN Venda_filme AS vf ON v.idVenda = vf.id_venda
	INNER JOIN Filme AS f ON vf.id_filme = f.idFilme
	WHERE YEAR(v.data) BETWEEN Ano1 AND Ano2
	GROUP BY vf.id_filme, f.nome
	ORDER BY total_vendas DESC;
END $$
DELIMITER ;

-- CALL TopFilmesAno (2022, 2023);

DELIMITER $$
CREATE PROCEDURE TopFilmesMes (IN Mes1 INT, IN Mes2 INT)
BEGIN
	SELECT vf.id_filme, f.nome, COUNT(vf.id_filme) AS total_vendas
	FROM Venda v
	INNER JOIN Venda_filme AS vf ON v.idVenda = vf.id_venda
	INNER JOIN Filme AS f ON vf.id_filme = f.idFilme
	WHERE MONTH(v.data) BETWEEN Mes1 AND Mes2
	GROUP BY vf.id_filme, f.nome
	ORDER BY total_vendas DESC;
END $$
DELIMITER ;

-- CALL TopFilmesMes (5,6);


-- ------------------------------------------------------------------------------------------
-- (QUERY 9) -> -- -- quais os clientes que mais filmes compraram a partir de determinada 
-- data, por ordem decrescente
-- ------------------------------------------------------------------------------------------


DELIMITER $$
CREATE PROCEDURE TopClientePeriodo (IN dataesc DATETIME)
BEGIN
	SELECT cliente.username, cliente.nome, COUNT(vf.id_filme) AS total_compras
	FROM Venda venda
	INNER JOIN Venda_filme AS vf ON venda.idVenda = vf.id_venda
	INNER JOIN Cliente cliente ON venda.idCliente = cliente.username
	WHERE venda.data >= dataesc
	GROUP BY cliente.username, cliente.nome
	ORDER BY total_compras DESC;
END $$
DELIMITER ;



-- CALL TopClientePeriodo ('2022-01-01');


-- ------------------------------------------------------------------------------------------
-- (QUERY 10) -> -- Consultar os clientes com idade compreendida entre 18 e 23 anos e que
-- tenham comprado filmes de terror mais que uma vez
-- ------------------------------------------------------------------------------------------


DELIMITER $$
CREATE PROCEDURE TopTerror ()
BEGIN
	SELECT c.username, c.nome, COUNT(vf.id_filme) AS total_compras
	FROM Cliente c
	INNER JOIN Venda v ON c.username = v.idCliente
	INNER JOIN Venda_filme vf ON v.idVenda = vf.id_venda
	INNER JOIN Filme f ON vf.id_filme = f.idFilme
	WHERE YEAR(CURDATE()) - YEAR(c.data_nascimento) BETWEEN 18 AND 23
	AND f.genero = 'Terror'
	GROUP BY c.username, c.nome
	HAVING COUNT(vf.id_filme) > 1
	ORDER BY total_compras DESC;
END $$
DELIMITER ;

-- CALL TopTerror;

-- ------------------------------------------------------------------------------------------
-- (QUERY 11) -> -- Consultar todos os registos de compras de material para a loja entre
-- determinadas datas por parte dos funcionários
-- ------------------------------------------------------------------------------------------


DELIMITER $$
CREATE PROCEDURE ComprasFornecedores (IN data1 DATE, IN data2 DATE)
BEGIN
	SELECT c.idCompra, c.data, c.n_artigos, c.preco_total, f.idFornecedor, f.nome
	FROM Compra c
	INNER JOIN Fornecedor f ON c.idFornecedor = f.idFornecedor
	WHERE c.data BETWEEN data1 AND data2
	ORDER BY c.data;
END $$
DELIMITER ;

-- CALL ComprasFornecedores ('2023-01-01', CURDATE());


-- ------------------------------------------------------------------------------------------
-- (QUERY 12) -> -- Consultar as vendas associadas a um determinado funcionário num dado 
-- período de tempo por parte do administrador
-- ------------------------------------------------------------------------------------------

DELIMITER $$
CREATE PROCEDURE VendasFuncionario (IN idf INT, IN data1 DATE, IN data2 DATE)
BEGIN
	SELECT v.idVenda, v.preco_final, v.data
	FROM Venda v
	INNER JOIN Funcionário AS f ON f.idFuncionário = v.idFuncionário
	WHERE v.data >= data1 AND v.data <= data2 AND f.idFuncionário = idf
	ORDER BY v.data DESC;
END $$
DELIMITER ;

-- CALL VendasFuncionario(1, '2022-01-01', CURDATE());



-- User consultar as suas compras

DELIMITER $$
CREATE PROCEDURE ConsultaComprasUser (IN userID VARCHAR(20))
BEGIN
	SELECT *
    FROM VendasView AS vv 
    WHERE vv.`Username Cliente` = userID
    ORDER BY vv.`Data de Venda` DESC;
END $$
DELIMITER ;

-- DROP PROCEDURE ConsultaComprasUser;
-- CALL ConsultaComprasUser('catarinasantos');