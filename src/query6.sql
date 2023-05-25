USE videomino;

-- Qualquer utilizador pode pedir ao sistema para ordenar de forma crescente
-- ou decresencente os filmes de acordo com a sua data de lançamento
-- ou rating associado

SELECT *
FROM Filme
ORDER BY data ASC; -- Ordenar por data de lançamento crescente

-- Ou

SELECT *
FROM Review
ORDER BY rating DESC; -- Ordenar por rating decrescente