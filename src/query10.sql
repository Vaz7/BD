USE videomino; 

-- Consultar os clientes com idade compreendida entre 18 e 23 anos e que
-- tenham comprado filmes de terror mais que uma vez por parte do administrador

SELECT c.username, c.nome, COUNT(vf.id_filme) AS total_compras
FROM Cliente c
JOIN Venda v ON c.username = v.idCliente
JOIN Venda_filme vf ON v.idVenda = vf.id_venda
JOIN Filme f ON vf.id_filme = f.idFilme
WHERE c.data_nascimento BETWEEN '2000-01-01' AND '2005-12-31' -- Substitua com o intervalo de idade desejado
  AND f.genero = 'terror'
GROUP BY c.username, c.nome
HAVING COUNT(vf.id_filme) > 1
ORDER BY total_compras DESC;
