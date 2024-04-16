use ecommercerascunho;

SELECT 
  table_name
FROM
  information_schema.tables
WHERE
  table_schema = 'ecommercerascunho';

-- Selecionar todos os clientes PJ/PF
SELECT 
  *
FROM
  Customer;

-- Selecionar clientes PF
SELECT 
  c.*, n.*
FROM
  Customer c
    INNER JOIN
  Naturalperson n ON c.idCustomer = n.idNaturalPerson;

-- Selecionar clientes PJ
SELECT 
  c.*, l.*
FROM
  Customer c
    INNER JOIN
  LegalEntity l ON c.idCustomer = l.idLegalEntity;

-- Selecionar todos os pedidos (com o status do pedido e do pagamento) junto com as informações do cliente que fez o pedido:
SELECT 
  so.*, c.fname, c.Lname, c.Adrress, p.TypePayment
FROM
  salesOrder so
    INNER JOIN
  Customer c ON so.idOrderClient = c.idCustomer
    LEFT JOIN
  Payment p ON so.idSalesOrder = p.idSalesOrder;

-- Selecionar todos os produtos e suas quantidades em estoque:
SELECT 
  ps.*, ps.quantity AS QuantityInStock
FROM
  productStorage ps;

-- Localização dos produtos
SELECT 
  *
FROM
  productstorage p
    INNER JOIN
  storagelocation s ON p.idProdStorage = s.idLStorage;

-- Selecionar todos os fornecedores e seus produtos fornecidos:
SELECT 
  s.*, p.*
FROM
  supplier s
    INNER JOIN
  productSupplier ps ON s.idSupplier = ps.idPSupplier
    INNER JOIN
  product p ON ps.idPProduct = p.idProduct;

-- Selecionar todos os vendedores e seus produtos em estoque:
SELECT 
  s.*, p.*
FROM
  seller s
    INNER JOIN
  productSeller ps ON s.idSeller = ps.idPSeller
    INNER JOIN
  product p ON ps.idProduct = p.idProduct;

-- Selecionar todos os pedidos de produtos junto com as informações dos produtos e seus status:
SELECT 
  po.*, p.*, po.POStatus
FROM
  productOrder po
    INNER JOIN
  product p ON po.idProductOrderProduct = p.idProduct
    INNER JOIN
  salesOrder so ON po.idProductOrder = so.idSalesOrder
    LEFT JOIN
  productStorage ps ON p.idProduct = ps.idProdStorage;

-- Selecionar os tipos de pagamentos por cliente
SELECT 
  p.idPayment, p.TypePayment, p.idSalesOrder, c.idCustomer
FROM
  Payment p
    INNER JOIN
  Customer c ON p.idCustomer = c.idCustomer;

-- Selecionar todos os produtos vendidos em um determinado pedido
SELECT 
  p.*, po.*
FROM
  productOrder po
    INNER JOIN
  product p ON po.idProductOrderProduct = p.idProduct
WHERE
  po.idProductOrder = 1;

-- Selecionar todos os vendedores que fornecem um determinado produto
SELECT 
  s.*, p.*
FROM
  productSeller ps
    INNER JOIN
  seller s ON ps.idPSeller = s.idSeller
    INNER JOIN
  product p ON ps.idProduct = p.idProduct
WHERE
  p.idProduct = 3 OR p.idProduct = 1;
