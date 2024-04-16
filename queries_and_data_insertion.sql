-- inserindo dados das tabelas
use ecommerce;

INSERT INTO customer (fname, lname, CPF, address, birthday_date) VALUES
('João', 'Silva', '12345678901', 'Rua das Flores, 123', '1990-05-15'),
('Maria', 'Santos', '23456789012', 'Avenida Principal, 456', '1985-10-20'),
('Pedro', 'Ferreira', '34567890123', 'Travessa das Árvores, 789', '1978-07-03'),
('Ana', 'Oliveira', '45678901234', 'Rua do Bosque, 987', '1995-12-10'),
('Carlos', 'Rodrigues', '56789012345', 'Rua do Sol, 321', '1982-04-25'),
('Juliana', 'Costa', '67890123456', 'Avenida Central, 654', '1992-08-30'),
('Paulo', 'Martins', '78901234567', 'Rua das Pedras, 147', '1987-03-18'),
('Camila', 'Pereira', '89012345678', 'Travessa dos Coqueiros, 258', '1998-09-05'),
('Lucas', 'Gomes', '90123456789', 'Avenida das Estrelas, 369', '1980-11-28'),
('Fernanda', 'Almeida', '01234567890', 'Rua das Margaridas, 753', '1993-06-22');
select * from customer;

INSERT INTO product (Pname, Category, Review, Pdescription, Price) VALUES
('Smartphone XYZ', 'Eletrônico', 4.5, 'Smartphone avançado', 799.99),
('Camisa Polo Azul', 'Vestuário', 4.2, 'Camisa polo de algodão', 39.99),
('Arroz Integral', 'Alimentos', 4.8, 'Arroz integral orgânico', 5.99),
('Carrinho de Controle Remoto', 'Brinquedos', 4.0, 'Carrinho de controle remoto', 49.99),
('O Senhor dos Anéis', 'Livros', 4.9, 'Livro clássico de fantasia', 29.99),
('Notebook ABC', 'Eletrônico', 4.7, 'Notebook poderoso para trabalho', 1199.99),
('Calça Jeans Preta', 'Vestuário', 4.4, 'Calça jeans de alta qualidade', 59.99),
('Feijão Preto', 'Alimentos', 4.6, 'Feijão preto de excelente qualidade', 3.99),
('Boneca Barbie', 'Brinquedos', 4.3, 'Boneca Barbie original', 29.99),
('Harry Potter e a Pedra Filosofal', 'Livros', 4.8, 'Livro de fantasia para todas as idades', 24.99);
select * from product;


INSERT INTO salesOrder (idOrderClient, OrderStatus, orderDescription, sendValue, paymentStatus) VALUES
(1, 'Ordered', 'Pedido de Smartphone', 799.99, 'Pending'),
(2, 'Sent', 'Pedido de Camisa Polo', 39.99, 'Authorized'),
(3, 'Delivered', 'Pedido de Arroz Integral', 5.99, 'Completed'),
(4, 'Canceled', 'Pedido de Carrinho de Controle Remoto', 49.99, 'Failed'),
(5, 'Ordered', 'Pedido de O Senhor dos Anéis', 29.99, 'Processing'),
(6, 'Sent', 'Pedido de Notebook', 1199.99, 'Pending'),
(7, 'Delivered', 'Pedido de Calça Jeans Preta', 59.99, 'Authorized'),
(8, 'Canceled', 'Pedido de Feijão Preto', 3.99, 'Failed'),
(9, 'Ordered', 'Pedido de Boneca Barbie', 29.99, 'Processing'),
(10, 'Sent', 'Pedido de Harry Potter e a Pedra Filosofal', 24.99, 'Completed');
select * from salesorder;

INSERT INTO payment (TypePayment, idCustomer, idSalesOrder) VALUES
('Cash', 1, 11),
('Card', 2, 12),
('Crypto', 3, 13),
('Card', 4, 14),
('Cash', 5, 15),
('Crypto', 6, 16),
('Cash', 7, 17),
('Card', 8, 18),
('Crypto', 9, 19),
('Card', 10, 20);
select * from payment;

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
select * from productstorage;

INSERT INTO supplier (SocialName, CNPJ, Contact) VALUES
('Fornecedor A', '12345678901234', 'João Silva'),
('Fornecedor B', '23456789012345', 'Maria Santos'),
('Fornecedor C', '34567890123456', 'Pedro Ferreira'),
('Fornecedor D', '45678901234567', 'Ana Oliveira'),
('Fornecedor E', '56789012345678', 'Carlos Rodrigues'),
('Fornecedor F', '67890123456789', 'Juliana Costa'),
('Fornecedor G', '78901234567890', 'Paulo Martins'),
('Fornecedor H', '89012345678901', 'Camila Pereira'),
('Fornecedor I', '90123456789012', 'Lucas Gomes'),
('Fornecedor J', '01234567890123', 'Fernanda Almeida');
select * from supplier;

INSERT INTO seller (SocialName, AbstName, Adrress, CNPJ, CPF) VALUES
('Vendedor A', 'VendA', 'Rua das Flores, 123', '12345678901234', '12345678901'),
('Vendedor B', 'VendB', 'Avenida Principal, 456', '23456789012345', '23456789012'),
('Vendedor C', 'VendC', 'Travessa das Árvores, 789', '34567890123456', '34567890123'),
('Vendedor D', 'VendD', 'Rua do Bosque, 987', '45678901234567', '45678901234'),
('Vendedor E', 'VendE', 'Rua do Sol, 321', '56789012345678', '56789012345'),
('Vendedor F', 'VendF', 'Avenida Central, 654', '67890123456789', '67890123456'),
('Vendedor G', 'VendG', 'Rua das Pedras, 147', '78901234567890', '78901234567'),
('Vendedor H', 'VendH', 'Travessa dos Coqueiros, 258', '89012345678901', '89012345678'),
('Vendedor I', 'VendI', 'Avenida das Estrelas, 369', '90123456789012', '90123456789'),
('Vendedor J', 'VendJ', 'Rua das Margaridas, 753', '01234567890123', '01234567890');
select * from seller;

INSERT INTO productSeller (idPSeller, idProduct, ProdQuantity) VALUES
(1, 21, 10),
(2, 22, 20),
(3, 23, 15),
(4, 24, 30),
(5, 25, 25),
(6, 26, 12),
(7, 27, 18),
(8, 28, 22),
(9, 29, 14),
(10, 30, 28);
select * from productseller;


INSERT INTO productOrder (idProductOrderProduct, idProductOrder, POQuantity, POStatus) VALUES
(21, 11, 5, 'Disponível'),
(22, 12, 10, 'Disponível'),
(23, 13, 8, 'Disponível'),
(24, 14, 15, 'Disponível'),
(25, 15, 12, 'Disponível'),
(26, 16, 3, 'Disponível'),
(27, 17, 9, 'Disponível'),
(28, 18, 7, 'Disponível'),
(29, 19, 6, 'Disponível'),
(30, 20, 11, 'Disponível');
select * from productorder;

delete from storagelocation;
INSERT INTO storageLocation (idLProduct, idLStorage, location) VALUES
(21, 1, 'Prateleira 1'),
(22, 2, 'Prateleira 2'),
(23, 3, 'Estoque Central'),
(24, 4, 'Depósito 1'),
(25, 5, 'Prateleira 3'),
(26, 6, 'Depósito 2'),
(27, 7, 'Estoque Norte'),
(28, 8, 'Prateleira 4'),
(29, 9, 'Depósito 3'),
(30, 10, 'Estoque Sul');
select * from storagelocation;

INSERT INTO productSupplier (idPSupplier, idPProduct, quantity) VALUES
(1, 21, 20),
(2, 22, 30),
(3, 23, 25),
(4, 24, 40),
(5, 25, 35),
(6, 26, 22),
(7, 27, 28),
(8, 28, 32),
(9, 29, 24),
(10, 30, 38);
select * from productsupplier;




