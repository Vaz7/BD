USE videomino; 

-- Consultar as vendas associadas a cada funcionário num dado período
-- de tempo por parte do administrador

SELECT f.idFuncionário, f.nome AS nome_funcionário, COUNT(v.idVenda) AS total_vendas
FROM Funcionário f
LEFT JOIN Venda v ON f.idFuncionário = v.idFuncionário
WHERE v.data >= '2023-01-01' AND v.data <= '2023-12-31' -- Substitua com o período de tempo desejado
GROUP BY f.idFuncionário, f.nome
ORDER BY total_vendas DESC;
