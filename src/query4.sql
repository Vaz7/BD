USE videomino;

SET @lower_price = 0;
SET @upper_price = 10;

-- vale a pena fazer um  programa para dar estes valores?

SELECT * FROM Filme WHERE preco BETWEEN @lower_price AND @upper_price;