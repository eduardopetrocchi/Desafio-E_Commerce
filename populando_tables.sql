INSERT INTO Customer (fname, lname, Adrress) VALUES
('John', 'Doe', '123 Main Street'),
('Jane', 'Smith', '456 Elm Street'),
('Michael', 'Johnson', '789 Oak Avenue'),
('Emily', 'Brown', '101 Maple Drive'),
('Christopher', 'Wilson', '202 Pine Lane'),
('Jessica', 'Anderson', '303 Cedar Road'),
('David', 'Martinez', '404 Birch Street'),
('Sarah', 'Taylor', '505 Willow Avenue'),
('Daniel', 'Thomas', '606 Oak Street'),
('Amanda', 'Jackson', '707 Elm Avenue'),
('James', 'Miller', '808 Cedar Street'),
('Jennifer', 'Garcia', '909 Maple Avenue'),
('Matthew', 'Rodriguez', '1010 Pine Drive'),
('Elizabeth', 'Lopez', '1111 Oak Lane'),
('Ryan', 'Hernandez', '1212 Elm Road'),
('Samantha', 'Gonzalez', '1313 Birch Avenue'),
('William', 'Perez', '1414 Willow Drive'),
('Olivia', 'Sanchez', '1515 Cedar Lane'),
('Ethan', 'Lee', '1616 Maple Road'),
('Isabella', 'Moore', '1717 Pine Street');
SELECT 
    *
FROM
    `customer`;


-- 10 itens para LegalEntity
INSERT INTO LegalEntity (idLegalEntity, companyName, CNPJ) VALUES
(21, 'Empresa A', '12345678901234'),
(22, 'Empresa B', '23456789012345'),
(23, 'Empresa C', '34567890123456'),
(24, 'Empresa D', '45678901234567'),
(25, 'Empresa E', '56789012345678'),
(26, 'Empresa F', '67890123456789'),
(27, 'Empresa G', '78901234567890'),
(28, 'Empresa H', '89012345678901'),
(29, 'Empresa I', '90123456789012'),
(30, 'Empresa J', '01234567890123');


-- 10 itens para NaturalPerson
INSERT INTO NaturalPerson (idNaturalPerson, CPF, birthday_date) VALUES
(31, '12345678901', '1990-01-01'),
(32, '23456789012', '1995-02-15'),
(33, '34567890123', '1987-05-20'),
(34, '45678901234', '1983-08-10'),
(35, '56789012345', '1979-10-25'),
(36, '67890123456', '1992-04-30'),
(37, '78901234567', '1986-07-07'),
(38, '89012345678', '1998-09-12'),
(39, '90123456789', '1980-12-18'),
(40, '01234567890', '1975-03-05');


INSERT INTO product (Pname, Category, Review, Pdescription, Price) VALUES
('Smartphone X', 'Eletrônico', 4.5, 'Smartphone', 999.99),
('Smart TV 4K', 'Eletrônico', 4.8, 'Televisor', 1499.99),
('Camisa Polo', 'Vestuário', 4.3, 'Camisa', 39.99),
('Calça Jeans', 'Vestuário', 4.0, 'Calça', 49.99),
('Arroz', 'Alimentos', 4.7, 'Arroz branco', 5.99),
('Feijão', 'Alimentos', 4.6, 'Feijão carioca', 4.99),
('Bola de Futebol', 'Brinquedos', 4.9, 'Bola', 19.99),
('Quebra-cabeça', 'Brinquedos', 4.4, 'Quebra-cabeça 1000 peças', 15.99),
('Harry Potter', 'Livros', 4.7, 'Livro de ficção', 29.99),
('A Culpa é das Estrelas', 'Livros', 4.6, 'Livro de romance', 24.99),
('Tablet', 'Eletrônico', 4.6, 'Tablet', 299.99),
('Jaqueta de Couro', 'Vestuário', 4.5, 'Jaqueta', 79.99),
('Macarrão', 'Alimentos', 4.8, 'Macarrão espaguete', 2.99),
('Lego', 'Brinquedos', 4.8, 'Conjunto de peças de montar', 49.99),
('Kindle', 'Eletrônico', 4.7, 'Leitor digital', 119.99),
('Vestido de Festa', 'Vestuário', 4.6, 'Vestido longo', 89.99),
('Chocolate', 'Alimentos', 4.9, 'Barra de chocolate ao leite', 3.99),
('Carro de Controle Remoto', 'Brinquedos', 4.5, 'Carro RC', 29.99),
('O Senhor dos Anéis', 'Livros', 4.9, 'Livro de fantasia', 39.99),
('Fone de Ouvido', 'Eletrônico', 4.8, 'Fone de ouvido sem fio', 79.99);

-- Inserindo 30 itens na tabela salesOrder
-- Insere pedidos para clientes PJ
INSERT INTO salesOrder (idOrderClient, OrderStatus, orderDescription, sendValue, paymentStatus) VALUES
(21, 'Ordered', 'Smartphone X', 500.00, 'Authorized'),
(21, 'Ordered', 'Smart TV 4K', 300.00, 'Processing'),
(22, 'Ordered', 'Camisa Polo', 700.00, 'Completed'),
(22, 'Ordered', 'Calça Jeans', 450.00, 'Pending'),
(23, 'Ordered', 'Arroz', 50.00, 'Processing'),
(23, 'Ordered', 'Feijão', 40.00, 'Authorized'),
(24, 'Ordered', 'Bola de Futebol', 30.00, 'Completed'),
(24, 'Ordered', 'Quebra-cabeça', 25.00, 'Pending'),
(25, 'Ordered', 'Harry Potter', 35.00, 'Processing'),
(25, 'Ordered', 'A Culpa é das Estrelas', 30.00, 'Authorized'),
(26, 'Sent', 'Smartphone X', 500.00, 'Authorized'),
(26, 'Sent', 'Smart TV 4K', 300.00, 'Processing'),
(27, 'Sent', 'Camisa Polo', 700.00, 'Completed'),
(27, 'Sent', 'Calça Jeans', 450.00, 'Pending'),
(28, 'Sent', 'Arroz', 50.00, 'Processing'),
(28, 'Sent', 'Feijão', 40.00, 'Authorized'),
(29, 'Sent', 'Bola de Futebol', 30.00, 'Completed'),
(29, 'Sent', 'Quebra-cabeça', 25.00, 'Pending'),
(30, 'Sent', 'Harry Potter', 35.00, 'Processing'),
(30, 'Sent', 'A Culpa é das Estrelas', 30.00, 'Authorized');

-- Insere um pedido para cliente PF
INSERT INTO salesOrder (idOrderClient, OrderStatus, orderDescription, sendValue, paymentStatus) VALUES
(31, 'Ordered', 'Smartphone X', 500.00, 'Authorized'),
(32, 'Ordered', 'Camisa Polo', 120.00, 'Processing'),
(32, 'Ordered', 'Calça Jeans', 80.00, 'Authorized'),
(33, 'Ordered', 'Arroz', 25.00, 'Processing'),
(33, 'Ordered', 'Feijão', 20.00, 'Completed'),
(34, 'Ordered', 'Bola de Futebol', 50.00, 'Pending'),
(34, 'Ordered', 'Quebra-cabeça', 40.00, 'Processing'),
(35, 'Ordered', 'Harry Potter', 30.00, 'Processing'),
(35, 'Ordered', 'A Culpa é das Estrelas', 25.00, 'Authorized'),
(36, 'Ordered', 'Tablet', 200.00, 'Processing'),
(36, 'Ordered', 'Jaqueta de Couro', 150.00, 'Pending');

INSERT INTO Payment (TypePayment, idCustomer, idSalesOrder)
VALUES
('Cash', 21, 1),
('Card', 22, 2),
('Crypto', 23, 3),
('Card', 24, 4),
('Cash', 25, 5),
('Card', 26, 6),
('Crypto', 27, 7),
('Cash', 28, 8),
('Card', 29, 9),
('Crypto', 30, 10),
('Cash', 31, 11),
('Card', 32, 12),
('Crypto', 33, 13),
('Card', 34, 14),
('Cash', 35, 15),
('Card', 36, 16),
('Crypto', 37, 17),
('Cash', 38, 18),
('Card', 39, 19),
('Crypto', 40, 20);


INSERT INTO Delivery (idSalesOrder, Status, trackingCode) VALUES
(1, 'Processing', 'TRK123456789'),
(2, 'Shipped', 'TRK234567890'),
(3, 'Delivered', 'TRK345678901'),
(4, 'Processing', 'TRK456789012'),
(5, 'Shipped', 'TRK567890123'),
(6, 'Delivered', 'TRK678901234'),
(7, 'Processing', 'TRK789012345'),
(8, 'Shipped', 'TRK890123456'),
(9, 'Delivered', 'TRK901234567'),
(10, 'Processing', 'TRK012345678'),
(11, 'Shipped', 'TRK123456789'),
(12, 'Delivered', 'TRK234567890'),
(13, 'Processing', 'TRK345678901'),
(14, 'Shipped', 'TRK456789012'),
(15, 'Delivered', 'TRK567890123'),
(16, 'Processing', 'TRK678901234'),
(17, 'Shipped', 'TRK789012345'),
(18, 'Delivered', 'TRK890123456'),
(19, 'Processing', 'TRK901234567'),
(20, 'Shipped', 'TRK012345678');

INSERT INTO productStorage (storageLocation, quantity) VALUES
('Prateleira 1', 100),
('Prateleira 2', 150),
('Estoque Central', 200),
('Depósito 1', 75),
('Prateleira 3', 120),
('Depósito 2', 80),
('Estoque Norte', 90),
('Prateleira 4', 110),
('Depósito 3', 60),
('Estoque Sul', 85);


INSERT INTO supplier (SocialName, CNPJ, Contact) VALUES
('Fornecedor A', '12345678901234', 'Contato A'),
('Fornecedor B', '23456789012345', 'Contato B'),
('Fornecedor C', '34567890123456', 'Contato C'),
('Fornecedor D', '45678901234567', 'Contato D'),
('Fornecedor E', '56789012345678', 'Contato E'),
('Fornecedor F', '67890123456789', 'Contato F'),
('Fornecedor G', '78901234567890', 'Contato G'),
('Fornecedor H', '89012345678901', 'Contato H'),
('Fornecedor I', '90123456789012', 'Contato I'),
('Fornecedor J', '01234567890123', 'Contato J');


INSERT INTO seller (SocialName, AbstName, Adrress, CNPJ, CPF) VALUES
('Vendedor A', 'Abreviação A', 'Endereço A', '12345678901', '12345678901'),
('Vendedor B', 'Abreviação B', 'Endereço B', '23456789012', '23456789012'),
('Vendedor C', 'Abreviação C', 'Endereço C', '34567890123', '34567890123'),
('Vendedor D', 'Abreviação D', 'Endereço D', '45678901234', '45678901234'),
('Vendedor E', 'Abreviação E', 'Endereço E', '56789012345', '56789012345'),
('Vendedor F', 'Abreviação F', 'Endereço F', '67890123456', '67890123456'),
('Vendedor G', 'Abreviação G', 'Endereço G', '78901234567', '78901234567'),
('Vendedor H', 'Abreviação H', 'Endereço H', '89012345678', '89012345678'),
('Vendedor I', 'Abreviação I', 'Endereço I', '90123456789', '90123456789'),
('Vendedor J', 'Abreviação J', 'Endereço J', '01234567890', '01234567890');


-- Vendedor A
INSERT INTO productSeller (idPSeller, idProduct, ProdQuantity) VALUES
(1, 1, 10),
(1, 3, 20),
(1, 5, 15),
(2, 2, 5),
(2, 4, 8),
(2, 6, 12),
(3, 3, 18),
(3, 5, 25),
(3, 7, 7),
(4, 4, 6),
(4, 6, 10),
(4, 8, 14),
(5, 5, 30),
(5, 7, 10),
(5, 9, 20),
(6, 6, 15),
(6, 8, 5),
(6, 10, 18),
(7, 7, 22),
(7, 9, 28),
(7, 11, 9),
(8, 8, 8),
(8, 10, 12),
(8, 12, 16),
(9, 9, 35),
(9, 11, 15),
(9, 13, 25),
(10, 10, 20),
(10, 12, 10),
(10, 14, 30);

INSERT INTO productOrder (idProductOrderProduct, idProductOrder, POQuantity, POStatus) VALUES
(1, 1, 10, 'Disponível'),
(2, 1, 5, 'Disponível'),
(3, 1, 15, 'Disponível'),
(4, 2, 8, 'Disponível'),
(5, 2, 12, 'Disponível'),
(6, 2, 20, 'Disponível'),
(7, 3, 18, 'Disponível'),
(8, 3, 6, 'Disponível'),
(9, 3, 25, 'Disponível'),
(10, 4, 30, 'Disponível'),
(11, 4, 10, 'Disponível'),
(12, 4, 15, 'Disponível');

INSERT INTO storageLocation (idLProduct, idLStorage, location) VALUES
(1, 1, 'Prateleira 1'),
(2, 2, 'Prateleira 2'),
(3, 3, 'Estoque Central'),
(4, 4, 'Depósito 1'),
(5, 5, 'Prateleira 3'),
(6, 6, 'Depósito 2'),
(7, 7, 'Estoque Norte'),
(8, 8, 'Prateleira 4'),
(9, 9, 'Depósito 3'),
(10, 10, 'Estoque Sul');

-- Atualiza a coluna location com endereços aleatórios
UPDATE storageLocation
SET location = 
    CASE 
        WHEN idLStorage = 1 THEN 'Rua dos Exemplos, 123'
        WHEN idLStorage = 2 THEN 'Avenida Principal, 456'
        WHEN idLStorage = 3 THEN 'Rua das Amostras, 789'
        WHEN idLStorage = 4 THEN 'Avenida das Ruas, 321'
        WHEN idLStorage = 5 THEN 'Rua dos Sonhos, 654'
        WHEN idLStorage = 6 THEN 'Avenida da Liberdade, 987'
        WHEN idLStorage = 7 THEN 'Rua dos Artistas, 741'
        WHEN idLStorage = 8 THEN 'Avenida dos Prazeres, 852'
        WHEN idLStorage = 9 THEN 'Rua das Flores, 963'
        WHEN idLStorage = 10 THEN 'Avenida das Árvores, 147'
	END;


INSERT INTO productSupplier (idPSupplier, idPProduct, quantity) VALUES
(1, 1, 50),
(1, 2, 100),
(2, 3, 75),
(2, 4, 80),
(3, 5, 120),
(3, 6, 90),
(4, 7, 110),
(4, 8, 60),
(5, 9, 85),
(5, 10, 70);
