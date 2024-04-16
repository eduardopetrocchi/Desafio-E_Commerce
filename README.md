<<<<<<< HEAD
# E-CommerceMasterDB

## 📒 Descrição
Este README apresenta o banco de dados de uma aplicação de e-commerce. Ele armazena informações sobre clientes, pedidos, produtos, fornecedores e outras entidades relevantes para a operação de uma loja online. Além disso, inclui uma série de consultas SQL úteis para extrair informações específicas do banco de dados.

## 🤖 ChatGPT
Os dados deste banco de dados foram gerados e populados utilizando o ChatGPT, uma ferramenta de inteligência artificial desenvolvida pela OpenAI.

## 🧑‍💻 Estrutura do Banco de Dados
O banco de dados é composto por várias tabelas inter-relacionadas, incluindo Customer, LegalEntity, NaturalPerson, Product, SalesOrder, Payment, Delivery, ProductStorage, Supplier, Seller, ProductSeller, ProductOrder, StorageLocation e ProductSupplier.

## 📋 Scripts SQL
Na pasta `sql`, você encontrará scripts SQL para criar as tabelas do banco de dados e inserir dados de exemplo.

## 🔧 Como Usar
Para utilizar este banco de dados, configure-o em um servidor MySQL e importe o esquema e os dados fornecidos nos scripts SQL.

## 📝 Contribuições
Contribuições são bem-vindas! Sinta-se à vontade para abrir problemas ou enviar solicitações de pull com melhorias ou correções.

## Autores

=======
## Diagrama do Banco de Dados

Este diagrama representa o modelo de dados de um sistema de gerenciamento de pedidos. O sistema permite que os clientes façam pedidos de produtos, que podem ser pagos em dinheiro ou cartão.

**Entidades:**

* **Cliente:** Representa os clientes do sistema.
* **Endereço:** Representa os endereços dos clientes.
* **Produto:** Representa os produtos que podem ser pedidos.
* **Estoque:** Representa o estoque dos produtos.
* **Pedido:** Representa os pedidos feitos pelos clientes.
* **Pagamento:** Representa os pagamentos dos pedidos.

**Relacionamentos:**

* **Um cliente pode ter vários endereços.**
* **Um produto pode ter vários estoques.**
* **Um cliente pode fazer vários pedidos.**
* **Um pedido pode ter vários produtos.**
* **Um pedido pode ter um pagamento.**

**Atributos:**

* **Cliente:**
    * idCliente (chave primária)
    * Nome
    * CPF
    * Data de Nascimento
    * Email
    * Telefone
* **Endereço:**
    * idEndereco (chave primária)
    * Rua
    * Bairro
    * Cidade
    * Estado
    * CEP
    * idCliente (chave estrangeira)
* **Produto:**
    * idProduto (chave primária)
    * Descrição
    * Preço
    * Quantidade em Estoque
* **Estoque:**
    * idEstoque (chave primária)
    * idProduto (chave estrangeira)
    * Quantidade
* **Pedido:**
    * idPedido (chave primária)
    * Data do Pedido
    * Status do Pedido
    * idCliente (chave estrangeira)
* **Pagamento:**
    * idPagamento (chave primária)
    * Valor
    * Forma de Pagamento
    * idPedido (chave estrangeira)


## Autor
>>>>>>> fbda750d94bb556fb7cbb3d0d0b1a84fd87324e8
- [@eduardopetrocchi](https://www.github.com/eduardopetrocchi)

