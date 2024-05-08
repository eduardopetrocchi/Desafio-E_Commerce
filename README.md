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

# Documentação do Script de Backup e Transações MySQL

## Introdução:
Este script foi desenvolvido para lidar com transações em um banco de dados MySQL e realizar backups do banco de dados `ecommercerascunho`. O script consiste em três partes principais:

1. **Parte 1 - Transações:** Esta parte executa uma transação para inserir um novo produto na tabela `product` do banco de dados `ecommercerascunho`.

2. **Parte 2 - Transação com Procedure:** Esta parte cria uma stored procedure chamada `sql_error` que executa uma transação para inserir outro produto na tabela `product`. Em caso de erro, a transação é revertida.

3. **Parte 3 - Backup e Recovery:** Nesta parte, realizamos o backup do banco de dados `ecommercerascunho` utilizando o comando `mysqldump`. São criados dois tipos de backups: um backup completo do banco de dados e um backup que exclui as stored procedures, eventos e triggers.

## Requisitos:
- MySQL Server instalado e configurado.
- Permissões de usuário adequadas para executar transações e backups.

## Instruções de Uso:
1. Execute o script no ambiente MySQL onde o banco de dados `ecommercerascunho` está localizado.
2. Certifique-se de ajustar as credenciais de acesso ao MySQL conforme necessário.
3. Siga as instruções dentro do script para executar cada parte do desafio.

## Autor

- [@eduardopetrocchi](https://www.github.com/eduardopetrocchi)

