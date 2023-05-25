USE videomino;

-- Consultar todos os registos de compras de material para a loja entre
-- determinadas datas por parte dos funcionários

SELECT c.idCompra, c.data_criacao, c.n_artigos, c.preco_total, f.idFuncionário, f.nome AS nome_funcionario
FROM Compra c
INNER JOIN Funcionário f ON c.idFornecedor = f.idFuncionário
WHERE c.data_criacao BETWEEN '2023-01-01' AND '2023-12-31' -- Substitua com as datas desejadas
ORDER BY c.data_criacao;
