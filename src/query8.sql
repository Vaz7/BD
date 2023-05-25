USE videomino;

-- O administrador pode conhecer o top de filmes mais vendidos numa dada
-- semana, mês e ano

-- Top de filmes mais vendidos entre datas especificas:
SELECT vf.id_filme, f.nome, COUNT(vf.id_filme) AS total_vendas
FROM Venda v
JOIN Venda_filme vf ON v.idVenda = vf.id_venda
JOIN Filme f ON vf.id_filme = f.idFilme
WHERE (v.data) BETWEEN '2023-01-01' AND '2023-01-31' -- Substitua com as datas do mês desejado
GROUP BY vf.id_filme, f.nome
ORDER BY total_vendas DESC;


-- Top de filmes mais vendidos em um mês específico: onde tem <numero_mes> é preciso especificar o mês, <ano> igual
SELECT venda_filme.id_filme, filme.nome, COUNT(venda_filme.id_filme) AS total_vendas
FROM Venda venda
JOIN Venda_filme venda_filme ON venda.idVenda = venda_filme.id_venda
JOIN Filme filme ON venda_filme.id_filme = filme.idFilme
WHERE MONTH(venda.data) = 01 AND YEAR(venda.data) = 2023
GROUP BY venda_filme.id_filme, filme.nome
ORDER BY total_vendas DESC;


