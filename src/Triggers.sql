USE videomino

-- ESTE TRIGGER ATUALIZA O STOCK DOS FILMES QUE SÃO COMPRADOS

DELIMITER $$
CREATE TRIGGER atualizarStockCompra AFTER INSERT ON Compra_filme
FOR EACH ROW
BEGIN
    IF NEW.quantidade > 0 AND EXISTS (
        SELECT 1 FROM Compra -- isto faz uma tabela de 1's, só para saber se há algum
        WHERE idCompra = NEW.id_compra
        AND data = CURDATE()
    ) THEN
        UPDATE Filme
        SET stock = stock + NEW.quantidade
        WHERE idFilme = NEW.id_filme;
    END IF;
END $$
DELIMITER ;




-- ESTE TRIGGER ATUALIZAR O STOCK DOS FILMES QUE SÃO VENDIDOS

DELIMITER $$
CREATE TRIGGER atualizarStockVenda AFTER INSERT ON Venda_filme
FOR EACH ROW
BEGIN
    IF NEW.quantidade > 0 AND EXISTS (
        SELECT 1 FROM Venda 
        WHERE idVenda = NEW.id_Venda
        AND data = CURDATE()
    ) THEN
        UPDATE Filme
        SET stock = stock - NEW.quantidade
        WHERE idFilme = NEW.id_filme;
    END IF;
END $$
DELIMITER ;


	