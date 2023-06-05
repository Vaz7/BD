-- Índice para consulta "FilmesEntrePreços"
CREATE INDEX idx_preco ON Filme (preco);
-- Índice para consulta "FilmeGenero"
CREATE INDEX idx_genero ON Filme (genero);
-- Índice para consulta "OrdenaFilmesData"
CREATE INDEX idx_data ON Filme (data);
-- Índice para consulta "OrdenaFilmesRating"
CREATE INDEX idx_rating ON Review (rating);
-- Índice para consulta "VerificaFilmeStock"
CREATE INDEX idx_idFilme ON Filme (idFilme);
-- Índice para consulta "TopFilmesAno" e "TopClientePeriodo"
CREATE INDEX idx_data_venda ON Venda (data);
-- Índice para consulta "ComprasFornecedores"
CREATE INDEX idx_data_compra ON Compra (data_criacao);
-- Índice para consulta "VendasFuncionario"
CREATE INDEX idx_idFuncionario ON Venda (idFuncionário);
