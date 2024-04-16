use ecommercerascunho;

CREATE TABLE Customer (
    idCustomer INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(10) NOT NULL,
    Lname VARCHAR(10) NOT NULL,
    Adrress VARCHAR(45),
    CONSTRAINT unique_customer UNIQUE (idCustomer)
);
ALTER table `customer` MODIFY COLUMN fname VARCHAR(20);

CREATE TABLE LegalEntity (
    idLegalEntity INT NOT NULL PRIMARY KEY,
    companyName VARCHAR(255) NOT NULL,
    CNPJ VARCHAR(14) NOT NULL,
    CONSTRAINT fk_legal_entity_customer FOREIGN KEY (idLegalEntity) REFERENCES Customer(idCustomer),
    CONSTRAINT unique_cnpj_legal_entity UNIQUE (CNPJ)
);

CREATE TABLE NaturalPerson (
    idNaturalPerson INT NOT NULL PRIMARY KEY,
    CPF VARCHAR(11) NOT NULL,
    birthday_date VARCHAR(45),
    CONSTRAINT fk_natural_person_customer FOREIGN KEY (idNaturalPerson) REFERENCES Customer(idCustomer),
    CONSTRAINT unique_cpf_natural_person UNIQUE (CPF)
);


drop TABLE `product`;
CREATE TABLE product (
    idProduct INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Pname VARCHAR(45) NOT NULL,
    Category ENUM('Eletrônico', 'Vestuário', 'Alimentos', 'Brinquedos', 'Livros') NOT NULL,
    Review FLOAT DEFAULT 0,
    Pdescription VARCHAR(45),
    Price FLOAT(2) NOT NULL
);

CREATE TABLE salesOrder (
    idSalesOrder INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idOrderClient INT NOT NULL,
    OrderStatus ENUM('Ordered', 'Sent', 'Delivered', 'Canceled') DEFAULT ('Processing') NOT NULL, 
    orderDescription VARCHAR(45),
    sendValue FLOAT(2),
    paymentStatus ENUM('Pending', 'Authorized', 'Processing', 'Completed', 'Failed') DEFAULT ('Pending') NOT NULL,
    CONSTRAINT fk_salesOrders_customer FOREIGN KEY (idOrderClient) REFERENCES Customer(idCustomer)
);



CREATE TABLE Payment (
    idPayment INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    TypePayment ENUM('Cash', 'Card', 'Crypto'),
    idCustomer INT NOT NULL,
    idSalesOrder INT NOT NULL,
    CONSTRAINT fk_payment_customer FOREIGN KEY (idCustomer)
        REFERENCES Customer (idCustomer),
    CONSTRAINT fk_payment_salesOrder FOREIGN KEY (idSalesOrder)
        REFERENCES salesOrder (idSalesOrder),
    CONSTRAINT unique_payment_combo UNIQUE (idCustomer, idSalesOrder)
);



CREATE TABLE Delivery (
    idDelivery INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idSalesOrder INT NOT NULL,
    Status ENUM('Processing', 'Shipped', 'Delivered', 'Canceled'),
    trackingCode VARCHAR(20),
    CONSTRAINT fk_delivery_salesOrder FOREIGN KEY (idSalesOrder)
        REFERENCES salesOrder (idSalesOrder)
);

CREATE TABLE productStorage (
    idProdStorage INT AUTO_INCREMENT PRIMARY KEY,
    storageLocation VARCHAR(50),
    quantity INT DEFAULT 0
);

CREATE TABLE supplier (
    idSupplier INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    SocialName VARCHAR(255) NOT NULL,
    CNPJ VARCHAR(15) NOT NULL,
    Contact VARCHAR(45),
    CONSTRAINT unique_supplier UNIQUE (cnpj)
);

CREATE TABLE seller (
    idSeller INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    SocialName VARCHAR(255) NOT NULL,
    AbstName VARCHAR(45),
    Adrress VARCHAR(45),
    CNPJ VARCHAR(15),
    CPF VARCHAR(11),
    CONSTRAINT unique_cnpj_seller UNIQUE (CNPJ),
    CONSTRAINT unique_cpf_seller UNIQUE (CPF)
);

CREATE TABLE productSeller (
    idPSeller INT,
    idProduct INT,
    ProdQuantity INT NOT NULL DEFAULT 1,
    PRIMARY KEY (idPSeller , idProduct),
    CONSTRAINT fk_product_seller FOREIGN KEY (idPSeller)
        REFERENCES seller (idSeller),
    CONSTRAINT fk_product_product FOREIGN KEY (idProduct)
        REFERENCES product (idProduct)
);

CREATE TABLE productOrder (
    idProductOrderProduct INT,
    idProductOrder INT,
    POQuantity INT DEFAULT 0,
    POStatus ENUM('Disponível', 'Sem estoque') DEFAULT 'Disponível',
    PRIMARY KEY (idProductOrderProduct , idProductOrder),
    CONSTRAINT fk_productOrder_seller FOREIGN KEY (idProductOrderProduct)
        REFERENCES product (idProduct),
    CONSTRAINT fk_productOrder_product FOREIGN KEY (idProductOrder)
        REFERENCES salesOrder (idSalesOrder)
);

CREATE TABLE storageLocation (
    idLProduct INT,
    idLStorage INT,
    location VARCHAR(50) NOT NULL,
    PRIMARY KEY (idLProduct , idLStorage),
    CONSTRAINT fk_productStorageLocation_seller FOREIGN KEY (idLProduct)
        REFERENCES product (idProduct),
    CONSTRAINT fk_productStorageLocation_product FOREIGN KEY (idLStorage)
        REFERENCES productStorage (idProdStorage)
);

CREATE TABLE productSupplier (
    idPSupplier INT,
    idPProduct INT,
    quantity INT NOT NULL,
    PRIMARY KEY (idPSupplier , idPProduct),
    CONSTRAINT fk_product_supplier_supplier FOREIGN KEY (idPSupplier)
        REFERENCES supplier (IdSupplier),
    CONSTRAINT fk_product_supplier_product FOREIGN KEY (idPProduct)
        REFERENCES product (idProduct)
);