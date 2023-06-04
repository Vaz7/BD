-- VIEW DE FILMES

CREATE VIEW FilmeView AS
SELECT idFilme AS "ID", nome AS "Nome do Filme", data AS "Data de Lançamento", restricao_idade AS "Restrição", 
	   genero AS "Categoria", galarduacoes AS "Galardoações", sinopse AS "Sinopse", preco AS "Preço"
FROM Filme;

-- SELECT * FROM FilmeView;

-- VIEW DE CLIENTES

CREATE VIEW ClienteView AS
SELECT c.username AS "Username", c.nome AS "Nome", c.nif AS "NIF", c.data_nascimento AS "Data de Nascimento", 
	   c.email AS "E-Mail", c.n_telemovel AS "Contacto", CONCAT(m.rua, " ", m.num_porta, " ", m.cidade, " ",
       m.codigo_postal) AS "Endereço"
FROM Cliente AS c 
INNER JOIN Morada AS m
ON c.morada = m.idMorada;

-- SELECT * FROM ClienteView;


CREATE VIEW VendasView AS
SELECT v.idVenda AS "ID Venda", v.n_artigos AS "Nº Artigos", v.preco_final AS "Preço",
	   v.data AS "Data de Venda", c.username AS "Username Cliente", f.nome AS "Filme",
       vf.quantidade AS "Quantidade"
FROM Venda AS v
INNER JOIN Cliente AS c ON c.username = v.idCliente
INNER JOIN Venda_filme AS vf ON v.idVenda = vf.id_venda
INNER JOIN Filme AS f ON vf.id_filme = f.idFilme
ORDER BY v.data DESC, v.idVenda DESC;

-- SELECT * FROM VendasView;

