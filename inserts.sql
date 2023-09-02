INSERT INTO state
VALUES
	(1, 'SP');
INSERT INTO city (id_city, city_name, id_state)
VALUES
	(1, 'São Paulo', 1),
    (2, 'Sorocaba', 1),
    (3, 'Tatuí', 1);
INSERT INTO supplier
VALUES
	(1, 'Casa das Coxinhas', 'EMF Lanchonete Ltda', '11222333000100', 'Rua Penha', 575, 'Centro', '11222000', 1, '1123456789'),
    (2, 'Pizza e Cia', 'Pizzaria Nova Ltda', '22333444000155', 'Rua José', 210, 'Centro', '11555000', 1, '1133004400'),
    (3, 'Top Burguer', 'Lanches Zero Ltda', '33444555000166', 'Rua Barão', 315, 'Jd Primavera', '18001000', 2, '1522223333'),
    (4, 'Acaí Town', 'Murilo Souza EPP', '44555666000177', 'Rua Cruzeiro', 180, 'Centro', '18270000', 3, '1533050008');
INSERT INTO stock
VALUES
	(1, 'Armazem Central'),
    (2, 'Armazem Bairros'),
    (3, 'Armazem Interior');
INSERT INTO category_product
VALUES
	(1, 'Lanches'),
    (2, 'Pizza'),
    (3, 'Açaí'),
    (4, 'Salgado');
INSERT INTO product
VALUES
	(1, 'Coxinha', 2.5, 4, 1),
    (2, 'Esfiha', 2.75, 4, 1),
    (3, 'X-Salada', 12.9, 1, 3),
    (4, 'X-Bacon', 15.9, 1, 3),
    (5, 'Calabresa', 39.9, 2, 2),
    (6, 'Mussarela', 39.9, 2, 2),
    (7, 'Açaí com Morango', 15, 3, 4),
    (8, 'Açaí com Nutella', 18, 3, 4);
INSERT INTO product_stock
VALUES
	(1, 1, 100),
    (2, 1, 150),
    (3, 2, 50),
    (4, 2, 50),
    (5, 1, 20),
    (6, 1, 35),
    (7, 3, 80),
    (8, 3, 80);
INSERT INTO customer
VALUES
	(1, 'NP'),
    (2, 'NP'),
    (3, 'NP'),
    (4, 'LP'),
    (5, 'NP'),
    (6, 'LP');
INSERT INTO natural_person
VALUES
	(1, 1, 'Zeca', 'José Carlos', '11122233344', '1990-05-10', '11988887777'),
    (2, 2, 'Maria', 'Maria Olinda', '22233344455', '1980-03-22', '11999998888'),
    (3, 3, 'Mané', 'Manoel Coelho', '33344455566', '2000-12-17', '15915150101'),
    (4, 5, 'Bob', 'Roberto Souza', '44455566677', '1970-05-26', '15997005555');
INSERT INTO legal_person
VALUES
	(1, 4, 'Borrachas Tatuí', 'BT Equipamentos Ltda', '44555666000177', 'Rua Rui Barbosa', 571, 'Valinho', '18270002', 3, '1533050020'),
    (2, 6, 'Sorocar', 'Auto Peças Sorocaba Ltda', '55666777000188', 'Rua 10', 50, 'Vila Nova', '18001030', 2, '1533050008');
INSERT INTO address_customer
VALUES
	(1, 'Rua 1', 10, 'Vila Nova', '11001010', 1, 1, 'casa'),
    (2, 'Rua 2', 20, 'Centro', '11002020', 1, 1, 'trabalho'),
    (3, 'Rua 3', 30, 'Vila Nova', '11001010', 1, 2, 'cs'),
    (4, 'Rua 4', 40, 'Jd Primavera', '18001020', 2, 3, 'home'),
    (5, 'Rua 5', 50, 'Centro', '18001000', 2, 3, 'work'),
    (6, 'Rua 6', 60, 'Centro', '18270006', 3, 5, 'casa');
INSERT INTO status_order
VALUES
	(1, 'Processando'),
    (2, 'Aprovado'),
    (3, 'Entregador alocado'),
    (4, 'Saiu para entrega'),
    (5, 'Concluído'),
    (6, 'Cancelado');
INSERT INTO orders
VALUES
	(1, 1, 5, 52.5, '2023-08-30 20:30:15'),
    (2, 2, 5, 79.8, '2023-08-30 20:33:12'),
    (3, 3, 5, 51.6, '2023-08-30 20:34:10'),
    (4, 2, 4, 25.0, '2023-08-30 20:40:22'),
    (5, 4, 3, 150.0, '2023-08-30 21:00:32'),
    (6, 5, 2, 36.0, '2023-08-31 20:42:30'),
    (7, 6, 2, 57.6, '2023-08-31 20:42:32');
INSERT INTO payment
VALUES
	(1, 'Dinheiro'),
    (2, 'Cartão de Débito'),
    (3, 'Cartão de Crédito'),
    (4, 'Ticket');
INSERT INTO order_payment
VALUES
	(1, 2, 52.5),
    (2, 4, 25.45),
    (2, 3, 54.35),
    (3, 3, 51.6),
    (4, 1, 25),
    (5, 1, 150),
    (6, 2, 36),
    (7, 4, 57.6);
INSERT INTO status_delivery
VALUES
	(1, 'buscando entregador'),
    (2, 'entregador alocado'),
    (3, 'a retirar'),
    (4, 'saiu para entrega'),
    (5, 'aguardando código'),
    (6, 'entregue'),
    (7, 'cancelado');
INSERT INTO delivery
VALUES
	(1, 1, 5.5, 6, '123456'),
    (2, 2, 0, 6, '78945'),
    (3, 3, 4, 6, '456789'),
    (4, 4, 10.99, 4, '654321'),
    (5, 5, 8.99, 3, 'faca'),
    (6, 6, 9.99, 1, 'n229x'),
    (7, 7, 5, 1, '987xxx');
INSERT INTO order_product
VALUES
	(1, 1, 10, 2.5),
    (1, 2, 10, 2.75),
    (2, 5, 1, 39.9),
    (2, 6, 1, 39.9),
    (3, 3, 4, 12.9),
    (4, 1, 10, 2.5),
    (5, 7, 10, 15),
    (6, 8, 2, 18),
    (7, 3, 2, 12.9),
    (7, 4, 2, 15.9);