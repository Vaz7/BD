INSERT INTO Morada (rua, num_porta, cidade, codigo_postal) VALUES
    ('Rua José Castilha', 78, 'Lisboa', '1000-001'),
    ('Rua Santo Padre José', 2, 'Porto', '4000-002'),
    ('Avenida Central', 34, 'Braga', '4700-003'),
    ('Travessa da esquina', 2, 'Coimbra', '3000-004'),
    ('Praça da alegria', 54, 'Faro', '8000-005'),
    ('Rua da porta fechada', 26, 'Viseu', '3500-006'),
    ('Avenida da Europa', 77, 'Évora', '7000-007'),
    ('Rua da loja', 81, 'Portalegre', '7300-008'),
    ('Avenida pequena', 19, 'Guarda', '6300-009'),
    ('Rua dos pescadores', 10, 'Setúbal', '2900-010'),
    ('Avenida dos marinheiros', 11, 'Viana do Castelo', '4900-011'),
    ('Rua José Santos Silva', 22, 'Santarém', '2000-012'),
    ('Avenida Osnabruck', 143, 'Vila Real', '5000-013'),
    ('Travessa do encanto', 14, 'Aveiro', '3800-014'),
    ('Praça Oriental', 57, 'Leiria', '2400-015'),
    ('Rua Pedro Santos', 16, 'Bragança', '5300-016'),
    ('Avenida Principal', 107, 'Covilhã', '6200-017'),
    ('Rua Rei Carlos I', 98, 'Chaves', '5400-018'),
    ('Avenida do estádio', 119, 'Barcelos', '4750-019'),
    ('Rua da luz', 10, 'Vila Nova de Famalicão', '4760-020'),
    ('Rua do café', 98, 'Braga', '4700-023'),
    ('Praceta do descampado', 119, 'Braga', '4710-003'),
    ('Rua da rotunda das nações', 10, 'Braga', '4700-478');
    
INSERT INTO Funcionário (nome, data_nascimento, iban, email, n_telemovel, morada) VALUES
('João Silva', '1990-05-10', 'PT000000000123456789', 'joao.silva.10@video.com', '912345678', 21),
('Maria Luís', '1985-12-15', 'PT000000000987654321', 'mariasantosluis12@video.com', '923456789', 22),
('Pedro Costa', '1995-08-20', 'PT000000000567891234', 'pedro95.costa@video.com', '934567890', 23);

INSERT INTO Cliente (username, password, nome, nif, data_nascimento, email, n_telemovel, morada) VALUES
    ('joaosilva', 'pass123', 'João Silva', 123456789, '2000-05-10', 'joaosilva@gmail.com', 912345678, 1),
    ('mariasantos', 'pass456', 'Maria Santos', 937654321, '1991-12-15', 'mariasantos@gmail.com', 913456789, 2),
    ('antoniopereira', 'pass789', 'António Pereira', 456789123, '2004-07-20', 'antoniopereira@gmail.com', 934567690, 3),
    ('anacosta', 'passabc', 'Ana Costa', 721654987, '2002-03-05', 'anacosta@gmail.com', '945678901', 4),
    ('pedrofernandes', 'passdef', 'Pedro Fernandes', 654987221, '2001-09-12', 'pedrofernandes@gmail.com', 916789018, 5),
    ('sofiaalmeida', 'passtuv', 'Sofia Almeida', 789326594, '2002-06-18', 'sofiaalmeida@gmail.com', 969890123, 6),
    ('miguelsantos', 'passxyz', 'Miguel Santos', 987523650, '2001-11-25', 'miguelsantos@gmail.com', 938901234, 7),
    ('inespereira', 'pass1234', 'Inês Pereira', 456789123, '1991-04-30', 'inespereira@gmail.com', 919012345, 8),
    ('ricardocosta', 'pass5678', 'Ricardo Costa', 321654987, '2003-08-06', 'ricardocosta@gmail.com', 920123456, 9),
    ('martafernandes', 'pass9012', 'Marta Fernandes', 654987321, '2002-02-13', 'martafernandes@gmail.com', 921234567, 10),
    ('andreAlmeida', 'pass3456', 'André Almeida', 789321654, '2001-09-19', 'andrealmeida@gmail.com', 912345678, 11),
    ('catarinasantos', 'pass7890', 'Catarina Santos', 981123654, '1999-04-26', 'catarinasantos@gmail.com', 923456789, 12),
    ('paulosilva', 'pass2345', 'Paulo Silva', 123456789, '2001-11-01', 'paulosilva@gmail.com', 934567890, 13),
    ('teresacosta', 'pass6789', 'Teresa Costa', 987654321, '1990-06-07', 'teresacosta@gmail.com', 965678901, 14),
    ('carlosfernandes', 'pass0123', 'Carlos Fernandes', 456789123, '1988-01-14', 'carlosfernandes@gmail.com', 936789012, 15),
    ('saraalmeida', 'pass4567', 'Sara Almeida', 321654987, '1995-08-20', 'saraalmeida@gmail.com', 967890123, 16),
    ('manuelsantos', 'pass8901', 'Manuel Santos', 789321654, '1982-03-27', 'manuelsantos@gmail.com', 968901234, 17),
    ('inespereira2', 'pass12345', 'Inês Pereira', 980123654, '2002-10-02', 'inespereira2@gmail.com', 969012345, 18),
    ('ruicosta', 'pass56789', 'Rui Costa', 123456789, '2000-05-08', 'ruicosta@gmail.com', 990123456, 19),
    ('marianafernandes', 'pass90123', 'Mariana Fernandes', 987654321, '2001-12-15', 'marianafernandes@gmail.com', 911234567, 20); 

INSERT INTO Fornecedor (nome, nif, iban, email) VALUES
('Henrique Gonçalves', 123456789, 'PT50002700000001234567833', 'henriquegoncalves@gmail.com'),
('Joaquim Teixeira', 986654321, 'PT50002700000001234567844', 'joaquimteixeira@gmail.com'),
('Pedro Almeida', 555555555, 'PT50002700000001234567855', 'pedroalmeida@gmail.com'),
('António Hneriques', 111111111, 'PT50002700000001234567866', 'antoniohenriques@gmail.com'),
('Miguel Costa', 999999999, 'PT50002700000001234567877', 'miguelcosta@gmail.com');
   

INSERT INTO Filme (nome, data, restricao_idade, genero, galarduacoes, sinopse, stock, preco) VALUES
    ('Aventuras no Espaço', '2000-01-01', 12, 'Ficção Científica', 'Prémio de Melhores Efeitos Especiais', 'Uma emocionante jornada pelo espaço sideral.', 10, 9.99),
    ('O Mistério do Enigma', '2005-05-15', 16, 'Terror', 'Nenhum', 'Um Terror cheio de reviravoltas e segredos.', 8, 8.99),
    ('Amor em Paris', '1998-09-10', 14, 'Romance', 'Prémio de Melhor Filme Romântico', 'Uma história de amor ambientada nas ruas de Paris.', 5, 7.99),
    ('A Era dos Dragões', '1997-03-20', 16, 'Aventura', 'Prémio de Melhor Filme de Aventura', 'Uma jornada épica com dragões e heróis destemidos.', 12, 9.99),
    ('O Segredo das Profundezas', '2003-07-05', 12, 'Ação', 'Nenhum', 'Uma aventura subaquática cheia de perigos.', 10, 8.99),
    ('O Último Samurai', '2002-02-15', 14, 'Drama', 'Prémio de Melhor Ator', 'A história de um samurai em tempos de mudança.', 6, 9.99),
    ('A Vingança do Destino', '2006-11-30', 16, 'Ação', 'Nenhum', 'Um herói em busca de vingança contra seus inimigos.', 8, 4.49),
    ('No Limite da Realidade', '1995-04-25', 16, 'Ficção Científica', 'Nenhum', 'Uma viagem alucinante pelos limites da mente humana.', 10, 12.39),
    ('O Enigma da Esfinge', '1999-08-12', 14, 'Mistério', 'Prémio de Melhor Roteiro', 'Um quebra-cabeças complexo a ser desvendado.', 7, 15.99),
    ('Aventuras na Floresta', '2001-06-10', 12, 'Aventura', 'Nenhum', 'Uma emocionante jornada pela selva desconhecida.', 10, 7.99),
    ('Amor Proibido', '1996-12-20', 18, 'Romance', 'Prémio de Melhor Filme Romântico', 'Um amor que desafia todas as convenções sociais.', 4, 10.99),
    ('O Segredo da Ilha Perdida', '2004-08-05', 12, 'Aventura', 'Prémio de Melhor Direção de Arte', 'Uma ilha cheia de mistérios e tesouros escondidos.', 9, 4.99),
    ('O Julgamento Final', '2001-01-15', 16, 'Terror', 'Nenhum', 'Um Terror intenso com um julgamento de vida ou morte.', 7, 8.49),
    ('O Fantasma do Passado', '1994-11-10', 12, 'Drama', 'Prémio de Melhor Ator Coadjuvante', 'Um drama emocionante sobre redenção e perdão.', 6, 9.99),
    ('O Legado Perdido', '2003-03-25', 14, 'Ação', 'Prémio de Melhor Filme de Ação', 'Uma busca por um tesouro escondido com muitos perigos no caminho.', 10, 19.79),
    ('No Limite do Abismo', '2005-07-12', 16, 'Terror', 'Nenhum', 'Uma história de sobrevivência em um ambiente hostil.', 8, 5.50),
    ('O Labirinto Misterioso', '1998-02-15', 12, 'Mistério', 'Prémio de Melhor Filme de Mistério', 'Um labirinto cheio de enigmas e segredos ocultos.', 5, 8.40),
    ('Aventuras no Velho Oeste', '2000-11-30', 12, 'Aventura', 'Nenhum', 'Uma jornada emocionante pela era dos cowboys.', 10, 10.95),
    ('A Última Esperança', '1997-04-25', 16, 'Ficção Científica', 'Prémio de Melhores Efeitos Visuais', 'Uma batalha épica pela sobrevivência da humanidade.', 7, 8.99),
    ('O Enigma do Passado', '2002-08-12', 14, 'Terror', 'Prémio de Melhor Filme de Terror', 'Um mistério que envolve segredos sombrios do passado.', 9, 5.99),
    ('O Segredo da Montanha', '2003-06-10', 12, 'Aventura', 'Nenhum', 'Uma expedição perigosa em busca de um tesouro perdido.', 10, 10.99),
    ('Amor Proibido', '1999-12-20', 18, 'Romance', 'Prémio de Melhor Filme Romântico', 'Um amor que desafia todas as convenções sociais.', 4, 13.80),
    ('Aventuras na Cidade Perdida', '2004-08-05', 12, 'Aventura', 'Prémio de Melhor Fotografia', 'Uma jornada em busca de uma cidade lendária.', 9, 18.99),
    ('O Segredo do Portal', '1996-01-15', 16, 'Ficção Científica', 'Nenhum', 'Uma descoberta que pode mudar o destino da humanidade.', 7, 7.89),
    ('A Vingança do Passado', '2001-11-10', 12, 'Drama', 'Nenhum', 'Uma história de vingança em busca de redenção.', 6, 21.49),
    ('O Tesouro Esquecido', '1999-03-25', 14, 'Ação', 'Prémio de Melhor Efeitos Especiais', 'Uma caça ao tesouro cheia de perigos e obstáculos.', 10, 19.99),
    ('No Limite da Sobrevivência', '2002-07-12', 16, 'Terror', 'Nenhum', 'Uma luta pela sobrevivência em um ambiente hostil.', 8, 9.93),
    ('O Mistério do Quadro', '1997-02-15', 12, 'Mistério', 'Prémio de Melhor Filme de Mistério', 'Um quadro com segredos ocultos que precisam ser desvendados.', 5, 8.29),
    ('Aventuras no Novo Mundo', '1999-11-30', 12, 'Aventura', 'Nenhum', 'Uma jornada emocionante pelos mistérios do Novo Mundo.', 10, 12.99),
    ('O Último Desafio', '1995-04-15', 16, 'Ação', 'Prémio de Melhor Cena de Ação', 'Um desafio que testará os limites de coragem e determinação.', 7, 11.95),
    ('O Enigma do Espelho', '1998-08-12', 14, 'Terror', 'Prémio de Melhor Filme de Terror', 'Um espelho com um segredo sinistro que ameaça a vida dos protagonistas.', 9, 16.99),
    ('Aventuras na Terra Encantada', '2001-06-10', 12, 'Aventura', 'Nenhum', 'Uma jornada mágica por um reino cheio de encantos e perigos.', 10, 9.99),
    ('Amor Proibido', '1996-12-20', 18, 'Romance', 'Prémio de Melhor Filme Romântico', 'Um amor que desafia todas as convenções sociais.', 4, 14.30),
    ('O Segredo do Templo', '2004-08-05', 12, 'Aventura', 'Prémio de Melhor Direção de Arte', 'Um templo antigo com segredos que podem mudar o mundo.', 9, 8.99),
    ('No Limite da Escuridão', '1996-01-15', 16, 'Terror', 'Nenhum', 'Uma investigação que revela segredos sombrios e perigosos.', 7, 22.99),
    ('O Legado Perdido', '1994-11-10', 12, 'Drama', 'Prémio de Melhor Filme de Drama', 'Uma busca por um legado esquecido que pode mudar vidas.', 6, 19.99),
    ('Aventuras no Reino Submerso', '2003-03-25', 14, 'Ação', 'Prémio de Melhor Filme de Ação', 'Uma aventura épica em um reino submarino cheio de perigos.', 10, 8.99),
    ('O Segredo do Labirinto', '2005-07-12', 16, 'Terror', 'Nenhum', 'Um labirinto mortal que desafia a inteligência e a coragem.', 8, 5.59),
    ('O Mistério do Manuscrito', '1998-02-15', 12, 'Mistério', 'Prémio de Melhor Roteiro', 'Um manuscrito antigo com segredos que podem abalar a sociedade.', 5, 8.90),
    ('Aventuras no Velho Oeste', '2000-11-30', 12, 'Aventura', 'Nenhum', 'Uma jornada emocionante pela era dos cowboys.', 10, 9.12);

INSERT INTO Review (rating, comentario, id_Filme) VALUES
  (8, 'Um filme cheio de ação e reviravoltas emocionantes.', 1),
  (6, 'A trama é interessante, mas o final deixou a desejar.', 2),
  (9, 'Uma história de amor apaixonante e envolvente.', 3),
  (7, 'As cenas de ação são empolgantes, mas o enredo poderia ser mais desenvolvido.', 4),
  (8, 'Um filme subaquático repleto de adrenalina.', 5),
  (9, 'As atuações são incríveis e a história é emocionante.', 6),
  (5, 'A trama é previsível e os diálogos são fracos.', 7),
  (8, 'Uma experiência visualmente deslumbrante.', 8),
  (7, 'Um mistério intrigante que mantém o espectador interessado.', 9),
  (9, 'Uma aventura emocionante e cheia de surpresas.', 10),
  (6, 'O romance é forçado e o enredo não convence.', 11),
  (8, 'Uma ilha cheia de mistérios que cativa o espectador.', 12),
  (7, 'O Terror é envolvente, mas algumas cenas são previsíveis.', 13),
  (9, 'Uma história comovente que toca o coração.', 14),
  (8, 'As cenas de ação são emocionantes e bem coreografadas.', 15),
  (7, 'Um Terror com momentos de tensão e Terror.', 16),
  (6, 'O mistério é interessante, mas o desfecho é decepcionante.', 17),
  (8, 'Uma aventura divertida e repleta de ação.', 18),
  (7, 'Os efeitos visuais são impressionantes, mas o enredo é fraco.', 19),
  (9, 'Um Terror eletrizante que mantém o espectador vidrado.', 20),
  (8, 'Uma jornada emocionante cheia de perigos e descobertas.', 21),
  (6, 'O romance é clichê e previsível.', 22),
  (9, 'Uma aventura cheia de adrenalina e paisagens deslumbrantes.', 23),
  (7, 'Um filme de ficção científica intrigante e cheio de reviravoltas.', 24),
  (8, 'Uma história de vingança bem construída e cativante.', 25),
  (9, 'Os efeitos especiais são impressionantes e a ação é eletrizante.', 26),
  (6, 'O enredo é confuso e o ritmo do filme é lento.', 27),
  (8, 'Uma comédia divertida e cheia de momentos hilários.', 28),
  (7, 'As atuações são boas, mas a história é previsível.', 29),
  (9, 'Um filme emocionante que faz refletir sobre a vida.', 30); 
  

INSERT INTO Venda (idCliente, idFuncionário, n_artigos, preco_final, metodo, autenticidade, data)
VALUES
    ('joaosilva', 1, 1, 29.38, true, false, '2023-05-01'), 
    ('pedrofernandes', 2, 2, 33.37, false, true, '2023-05-02'), 
    ('sofiaalmeida', 1, 3, 49.59, false, true, '2023-05-03'), 
    ('joaosilva', 3, 4, 42.16, true, false, '2023-05-04'), 
    ('mariasantos', 2, 5, 10.99, false, true, '2023-05-05'), 
    ('catarinasantos', 2, 6, 58.95, false, true, '2023-05-06'), 
    ('miguelsantos', 2, 1, 13.49, true, false, '2023-05-07'), 
    ('ruicosta', 3, 2, 52.81, false, true, '2023-05-08'), 
    ('mariasantos', 1, 3, 20.44, false, true, '2023-05-09'), 
    ('antoniopereira', 1, 4, 31.98, true, false, '2023-05-10'), 
    ('andreAlmeida', 1, 5, 48.27, false, true, '2023-05-11'), 
    ('catarinasantos', 2, 6, 53.96, false, true, '2023-06-03');

INSERT INTO Venda_filme (id_venda, id_Filme, quantidade)
VALUES
  (1, 1, 1),
  (2, 2, 1),
  (7, 3, 1),
  (3, 4, 1),
  (3, 5, 1),
  (6, 6, 2),
  (4, 7, 1),
  (4, 8, 1),
  (11, 9, 1),
  (11, 10, 1),
  (5, 11, 1),
  (12, 4, 1),
  (9, 13, 1),
  (6, 14, 1),
  (8, 15, 1),
  (7, 16, 1),
  (2, 17, 1),
  (8, 18, 1),
  (12, 19, 1),
  (2, 20, 1),
  (6, 21, 1),
  (1, 22, 1),
  (2, 14, 1),
  (3, 25, 1),
  (12, 26, 1),
  (4, 28, 1),
  (8, 29, 1),
  (9, 30, 1),
  (4, 31, 1),
  (11, 32, 1),
  (11, 33, 1),
  (10, 34, 1),
  (10, 35, 1),
  (12, 36, 1),
  (6, 37, 1),
  (1, 38, 1),
  (8, 39, 1),
  (3, 40, 1),
  (6, 23, 1);


INSERT INTO Compra (data, n_artigos, preco_total, idFornecedor)
VALUES
  ('2023-05-10', 3, 29.97, 1),
  ('2023-06-03', 2, 19.98, 2),
  ('2023-05-12', 1, 9.99, 3),
  ('2023-05-13', 4, 39.96, 4),
  ('2023-05-14', 2, 19.98, 5),
  ('2023-05-15', 1, 9.99, 5),
  ('2023-05-16', 3, 9.97, 1),
  ('2023-05-17', 2, 9.98, 2),
  ('2023-05-18', 1, 9.99, 3),
  ('2023-05-19', 4, 39.96, 4),
  ('2023-05-20', 2, 19.98, 5),
  ('2023-05-21', 1, 9.99, 3),
  ('2023-05-22', 3, 29.97, 1),
  ('2023-05-23', 2, 19.98, 2),
  ('2023-05-24', 1, 9.99, 3),
  ('2023-05-25', 4, 39.96, 4),
  ('2023-05-26', 2, 19.98, 5),
  ('2023-05-27', 1, 9.99, 2),
  ('2023-05-28', 3, 29.97, 1),
  ('2023-05-29', 2, 19.98, 2),
  ('2023-05-30', 1, 9.99, 3);




INSERT INTO Compra_filme (id_compra, id_Filme, quantidade) VALUES
(1, 1, 5),
(1, 2, 5),
(1, 3, 5),
(2, 4, 6),
(2, 5, 8),
(3, 6, 7),
(4, 7, 4),
(4, 8, 5),
(4, 9, 3),
(4, 10, 8),
(5, 11, 6),
(5, 12, 7),
(6, 13, 8),
(7, 14, 6),
(7, 15, 5),
(7, 16, 4),
(8, 17, 12),
(8, 18, 4),
(9, 19, 9),
(10, 20, 5),
(10, 21, 6),
(10, 22, 4),
(10, 23, 6),
(11, 24, 5),
(11, 25, 8),
(12, 26, 9),
(13, 27, 3),
(13, 28, 4),
(13, 29, 5),
(14, 20, 4),
(14, 31, 5),
(15, 32, 5),
(16, 33, 6),
(16, 34, 7),
(16, 35, 8),
(16, 36, 8),
(17, 37, 4),
(17, 38, 4),
(18, 39, 6),
(19, 40, 3),
(19, 1, 5),
(19, 2, 6),
(20, 3, 12),
(20, 4, 11),
(21, 5, 10);


