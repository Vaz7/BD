-- VIEW DE FILMES

CREATE VIEW FilmeView AS
SELECT idFilme AS "ID", nome AS "Nome do Filme", data AS "Data de Lançamento", restricao_idade AS "Restrição", 
	   genero AS "Categoria", galarduacoes AS "Galardoações", sinopse AS "Sinopse", preco AS "Preço"
FROM Filme;

SELECT *
FROM FilmeView;

-- VIEW DE CLIENTES

CREATE VIEW ClienteView AS
SELECT c.username AS "Username", c.nome AS "Nome", c.nif AS "NIF", c.data_nascimento AS "Data de Nascimento", 
	   c.email AS "E-Mail", c.n_telemovel AS "Contacto", CONCAT(m.rua, " ", m.num_porta, " ", m.cidade, " ",
       m.codigo_postal) AS "Endereço"
FROM Cliente AS c 
INNER JOIN Morada AS m
ON c.morada = m.idMorada;

SELECT *
FROM ClienteView;
