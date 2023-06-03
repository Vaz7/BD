USE videomino



DELIMITER $$
CREATE TRIGGER atualizarStock AFTER INSERT ON Compra_filme
FOR EACH ROW
BEGIN
    IF NEW.quantidade > 0 AND EXISTS (
        SELECT 1 FROM Compra
        WHERE idCompra = NEW.id_compra
        AND data_prevista = CURDATE()
    ) THEN
        UPDATE Filme
        SET stock = stock + NEW.quantidade
        WHERE idFilme = NEW.id_filme;
    END IF;
END $$
DELIMITER ;




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


	