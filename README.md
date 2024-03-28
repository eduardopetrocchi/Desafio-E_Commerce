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
- [@eduardopetrocchi](https://www.github.com/eduardopetrocchi)

