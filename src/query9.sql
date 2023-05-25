USE videomino; 

-- O administrador pode conhecer quais os clientes que mais filmes compraram
-- a partir de determinada data, por ordem decrescente

SELECT cliente.username, cliente.nome, COUNT(venda_filme.id_filme) AS total_compras
FROM Venda venda
JOIN Venda_filme venda_filme ON venda.idVenda = venda_filme.id_venda
JOIN Cliente cliente ON venda.idCliente = cliente.username
WHERE venda.data >= '2023-01-01' -- Substitua com a data desejada
GROUP BY cliente.username, cliente.nome
ORDER BY total_compras DESC;
