SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP SCHEMA IF EXISTS videomino;
CREATE SCHEMA videomino;
USE videomino;

-- -----------------------------------------------------
-- Table Morada
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Morada (
  idMorada INT NOT NULL AUTO_INCREMENT,
  rua VARCHAR(100) NOT NULL,
  num_porta INT NOT NULL,
  cidade VARCHAR(50) NOT NULL,
  codigo_postal VARCHAR(10) NOT NULL,
  PRIMARY KEY (idMorada)
);

       
-- SELECT * FROM Morada 

-- -----------------------------------------------------
-- Table Funcionário
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Funcionário (
  idFuncionário INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  data_nascimento DATE NOT NULL,
  iban VARCHAR(45) NOT NULL,
  email VARCHAR(100) NOT NULL,
  n_telemovel INT NOT NULL,
  morada INT NOT NULL,
  PRIMARY KEY (idFuncionário),
  FOREIGN KEY (morada)
    REFERENCES videomino.Morada (idMorada)
);


-- SELECT * FROM Funcionário;

-- -----------------------------------------------------
-- Table Cliente
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cliente (
    username VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL,
    nome VARCHAR(45) NOT NULL,
    nif INT NOT NULL,
    data_nascimento DATE NOT NULL,
    email VARCHAR(100) NOT NULL,
    n_telemovel INT NOT NULL,
    morada INT NOT NULL,
    PRIMARY KEY (username),
    FOREIGN KEY (morada)
        REFERENCES videomino.Morada (idMorada)
);




-- SELECT * FROM Cliente

-- -----------------------------------------------------
-- Table Venda
-- ----------------------------------------------------
CREATE TABLE IF NOT EXISTS Venda(
  idVenda INT NOT NULL AUTO_INCREMENT,
  idCliente VARCHAR(20) NOT NULL,
  idFuncionário INT NOT NULL,
  n_artigos INT NOT NULL,
  preco_final DECIMAL(7,2) NOT NULL,
  metodo TINYINT NOT NULL,
  autenticidade TINYINT NOT NULL,
  data DATE NOT NULL,
  PRIMARY KEY (idVenda),
  FOREIGN KEY (idCliente)
    REFERENCES videomino.Cliente (username),
  FOREIGN KEY (idFuncionário)
    REFERENCES videomino.Funcionário (idFuncionário)
);


  
-- SELECT * FROM Venda; INNER JOIN Venda_filme vf ON vf.id_venda = Venda.idVenda WHERE vf.id_venda = 17;

-- -----------------------------------------------------
-- Table Filme
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Filme (
  idFilme INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  data DATE NOT NULL,
  restricao_idade INT NOT NULL,
  genero VARCHAR(25) NOT NULL,
  galarduacoes TEXT NULL,
  sinopse TEXT NOT NULL,
  stock INT NOT NULL,
  preco DECIMAL(7,2) NOT NULL,
  PRIMARY KEY (idFilme)
);



-- SELECT * FROM Filme;

-- -----------------------------------------------------
-- Table Review
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Review(
  idReview INT NOT NULL AUTO_INCREMENT,
  rating INT NOT NULL,
  comentario TEXT(1000) NOT NULL,
  id_filme INT NOT NULL,
  PRIMARY KEY (idReview),
  FOREIGN KEY (id_filme)
    REFERENCES videomino.Filme (idFilme)
);


-- SELECT * FROM Review;
-- -----------------------------------------------------
-- Table Venda_filme
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Venda_filme(
  id_venda INT NOT NULL,
  id_filme INT NOT NULL,
  quantidade INT NOT NULL,
  PRIMARY KEY (id_venda, id_filme),
  FOREIGN KEY (id_venda)
    REFERENCES videomino.Venda (idVenda),
  FOREIGN KEY (id_filme)
    REFERENCES videomino.Filme (idFilme)
);

-- SELECT * FROM Venda_filme;

-- -----------------------------------------------------
-- Table Fornecedor
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Fornecedor(
  idFornecedor INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  nif INT NOT NULL,
  iban VARCHAR(45) NOT NULL,
  email VARCHAR(100) NOT NULL,
  PRIMARY KEY (idFornecedor)
  );


-- SELECT * FROM Fornecedor;

-- -----------------------------------------------------
-- Table Compra
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Compra (
  idCompra INT NOT NULL AUTO_INCREMENT,
  data DATE NOT NULL,
  n_artigos INT NOT NULL,
  preco_total DECIMAL(7,2) NOT NULL,
  idFornecedor INT NOT NULL,
  PRIMARY KEY (idCompra),
  FOREIGN KEY (idFornecedor)
    REFERENCES videomino.Fornecedor (idFornecedor)
);

-- DROP TABLE Compra;
-- SELECT * FROM Compra;

-- -----------------------------------------------------
-- Table Compra_filme
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Compra_filme (
  id_compra INT NOT NULL,
  id_filme INT NOT NULL,
  quantidade INT NOT NULL,
  PRIMARY KEY (id_compra, id_filme),
  FOREIGN KEY (id_compra)
    REFERENCES videomino.Compra (idCompra),
  FOREIGN KEY (id_filme)
    REFERENCES videomino.Filme (idFilme)
);


-- SELECT * FROM Compra_filme;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


