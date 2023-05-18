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
  idMorada INT NOT NULL,
  rua VARCHAR(100) NOT NULL,
  num_porta INT NOT NULL,
  cidade VARCHAR(20) NOT NULL,
  codigo_postal VARCHAR(10) NOT NULL,
  PRIMARY KEY (idMorada)
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Morada (idMorada, rua, num_porta, cidade, codigo_postal)
VALUES (1, 'Rua A', 10, 'Cidade A', '12345'),
       (2, 'Rua B', 20, 'Cidade B', '67890'),
       (3, 'Rua C', 30, 'Cidade C', '54321');
       
-- SELECT * FROM Morada 

-- -----------------------------------------------------
-- Table Funcionário
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Funcionário (
  idFuncionário INT NOT NULL,
  nome VARCHAR(45) NOT NULL,
  data_nascimento DATETIME NOT NULL,
  iban VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  n_telemovel INT NOT NULL,
  morada INT NOT NULL,
  PRIMARY KEY (idFuncionário),
  UNIQUE INDEX n_telemovel_UNIQUE (n_telemovel ASC) VISIBLE,
  UNIQUE INDEX email_UNIQUE (email ASC) VISIBLE,
  UNIQUE INDEX iban_UNIQUE (iban ASC) VISIBLE,
  UNIQUE INDEX idFuncionário_UNIQUE (idFuncionário ASC) VISIBLE,
  INDEX morada_funcionario (morada ASC) VISIBLE,
  CONSTRAINT fk_morada_funcionario
    FOREIGN KEY (morada)
    REFERENCES videomino.Morada (idMorada)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Funcionário (idFuncionário, nome, data_nascimento, iban, email, n_telemovel, morada)
VALUES
  (1, 'John Doe', '1990-05-15', '1234567890', 'john.doe@example.com', 123456789, 1),
  (2, 'Jane Smith', '1985-08-20', '0987654321', 'jane.smith@example.com', 987654321, 2),
  (3, 'David Johnson', '1992-11-10', '5555555555', 'david.johnson@example.com', 555555555, 3);

-- SELECT * FROM Funcionário;

-- -----------------------------------------------------
-- Table Cliente
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cliente (
  username VARCHAR(20) NOT NULL,
  password VARCHAR(20) NOT NULL,
  nome VARCHAR(45) NOT NULL,
  nif INT NOT NULL,
  data_nascimento DATETIME NOT NULL,
  email VARCHAR(45) NOT NULL,
  n_telemovel INT NOT NULL,
  morada INT NOT NULL,
  PRIMARY KEY (username),
  INDEX morada_cliente (morada ASC) VISIBLE,
  CONSTRAINT fk_morada_cliente
    FOREIGN KEY (morada)
    REFERENCES videomino.Morada (idMorada)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Cliente (username, password, nome, nif, data_nascimento, email, n_telemovel, morada)
VALUES
  ('john123', 'password123', 'John Doe', 123456789, '1990-05-15', 'john.doe@example.com', 123456789, 1),
  ('jane456', 'password456', 'Jane Smith', 987654321, '1985-08-20', 'jane.smith@example.com', 987654321, 2),
  ('david789', 'password789', 'David Johnson', 555555555, '1992-11-10', 'david.johnson@example.com', 555555555, 3);

-- SELECT * FROM Cliente

-- -----------------------------------------------------
-- Table Venda
-- ----------------------------------------------------
CREATE TABLE IF NOT EXISTS Venda(
  idVenda INT NOT NULL,
  idCliente VARCHAR(20) NOT NULL,
  idFuncionário INT NOT NULL,
  n_artigos INT NOT NULL,
  preco_final DECIMAL(7,2) NOT NULL,
  metodo TINYINT NOT NULL,
  autenticidade TINYINT NOT NULL,
  data DATETIME NOT NULL,
  PRIMARY KEY (idVenda),
  INDEX cliente_idx (idCliente ASC) VISIBLE,
  INDEX vendedor_idx (idFuncionário ASC) VISIBLE,
  CONSTRAINT cliente
    FOREIGN KEY (idCliente)
    REFERENCES videomino.Cliente (username)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT vendedor
    FOREIGN KEY (idFuncionário)
    REFERENCES videomino.Funcionário (idFuncionário)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Venda (idVenda, idCliente, idFuncionário, n_artigos, preco_final, metodo, autenticidade, data)
VALUES
  (1, 'john123', 1, 3, 50.99, 1, 1, '2023-05-15 10:30:00'),
  (2, 'jane456', 2, 2, 30.50, 2, 0, '2023-05-16 14:45:00'),
  (3, 'david789', 1, 5, 80.75, 1, 1, '2023-05-17 09:15:00');
  
-- SELECT * FROM Venda

-- -----------------------------------------------------
-- Table Filme
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Filme (
  idFilme INT NOT NULL,
  nome VARCHAR(100) NOT NULL,
  data DATETIME NOT NULL,
  restricao_idade INT NOT NULL,
  genero VARCHAR(25) NOT NULL,
  galarduacoes TEXT NOT NULL,
  sinopse TEXT NOT NULL,
  stock INT NOT NULL,
  preco DECIMAL(7,2) NOT NULL,
  PRIMARY KEY (idFilme)
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Filme (idFilme, nome, data, restricao_idade, genero, galarduacoes, sinopse, stock, preco)
VALUES
  (1, 'Movie 1', '2023-05-15 14:30:00', 16, 'Action', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 10, 12.50),
  (2, 'Movie 2', '2023-05-16 18:45:00', 12, 'Comedy', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 5, 11.40),
  (3, 'Movie 3', '2023-05-17 20:15:00', 18, 'Drama', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 9, 9.60);


-- SELECT * FROM Filme;

-- -----------------------------------------------------
-- Table Review
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Review(
  idReview INT NOT NULL,
  rating INT NOT NULL,
  comentario TEXT(1000) NOT NULL,
  id_filme INT NOT NULL,
  PRIMARY KEY (idReview),
  INDEX id_filme_idx (id_filme ASC) VISIBLE,
  CONSTRAINT id_filme
    FOREIGN KEY (id_filme)
    REFERENCES videomino.Filme (idFilme)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Review (idReview, rating, comentario, id_filme)
VALUES
  (1, 4, 'Great movie!', 1),
  (2, 3, 'Decent movie.', 2),
  (3, 5, 'Excellent film!', 3);

-- SELECT * FROM Review;
-- -----------------------------------------------------
-- Table Venda_filme
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Venda_filme(
  id_venda INT NOT NULL,
  id_filme INT NOT NULL,
  PRIMARY KEY (id_venda, id_filme),
  INDEX filme_idx (id_filme ASC) VISIBLE,
  CONSTRAINT venda
    FOREIGN KEY (id_venda)
    REFERENCES videomino.Venda (idVenda)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT filme
    FOREIGN KEY (id_filme)
    REFERENCES videomino.Filme (idFilme)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Venda_filme (id_venda, id_filme)
VALUES
  (1, 1),
  (1, 2),
  (2, 3);

-- SELECT * FROM Venda_filme;

-- -----------------------------------------------------
-- Table Fornecedor
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Fornecedor(
  idFornecedor INT NOT NULL,
  nome VARCHAR(45) NOT NULL,
  nif INT NOT NULL,
  iban VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  PRIMARY KEY (idFornecedor))
ENGINE = InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Fornecedor (idFornecedor, nome, nif, iban, email)
VALUES
  (1, 'Supplier A', 123456789, 'ABCD1234', 'supplierA@example.com'),
  (2, 'Supplier B', 987654321, 'EFGH5678', 'supplierB@example.com'),
  (3, 'Supplier C', 555555555, 'IJKL9999', 'supplierC@example.com');

-- SELECT * FROM Fornecedor;

-- -----------------------------------------------------
-- Table Compra
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Compra (
  idCompra INT NOT NULL,
  data_criacao DATETIME NOT NULL,
  data_prevista DATETIME NOT NULL,
  n_artigos INT NOT NULL,
  preco_total DECIMAL(7,2) NOT NULL,
  idFornecedor INT NOT NULL,
  PRIMARY KEY (idCompra),
  INDEX id_fornecedor_idx (idFornecedor ASC) VISIBLE,
  CONSTRAINT id_fornecedor
    FOREIGN KEY (idFornecedor)
    REFERENCES videomino.Fornecedor (idFornecedor)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Compra (idCompra, data_criacao, data_prevista, n_artigos, preco_total, idFornecedor)
VALUES
  (1, '2023-05-17 10:00:00', '2023-05-20 15:00:00', 5, 100.00, 1),
  (2, '2023-05-18 11:30:00', '2023-05-21 12:00:00', 3, 75.50, 2),
  (3, '2023-05-19 14:45:00', '2023-05-22 10:30:00', 8, 200.25, 3);

-- SELECT * FROM Compra;

-- -----------------------------------------------------
-- Table Compra_filme
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Compra_filme (
  id_compra INT NOT NULL,
  id_filme INT NOT NULL,
  PRIMARY KEY (id_compra, id_filme),
  INDEX idFilme_idx (id_filme ASC) VISIBLE,
  CONSTRAINT idcompra
    FOREIGN KEY (id_compra)
    REFERENCES videomino.Compra (idCompra)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT idFilme
    FOREIGN KEY (id_filme)
    REFERENCES videomino.Filme (idFilme)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Compra_filme (id_compra, id_filme)
VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (3, 1),
  (3, 4);

-- SELECT * FROM Compra_filme;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


