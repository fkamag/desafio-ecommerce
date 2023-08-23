# desafio-ecommerce
Desafio do curso de Ciência de Dados - Criando um Banco de Dados para E-commerce - conteúdo da DIO

## 1 - A partir do modelo apresentado abaixo, criar o modelo relacional para ser utilizado em um e-commerce.

<img src="ER-Ecommerce.png">

## 2 - Criar o script SQL para criação do esquema de banco de dados

## 3 - Persistência de dados para testes

## 4 - Recuperação de informações com queries SQL

## Resolução do desafio proposto

Começamos a criação das entidades pelo Cliente com os seguintes campos:
- id_customer - id do cliente
- alias_name: ao invés de separar nome em First Name e Last Name optei por utilizar um nome alternativo, que o usuário possa cadastrar o nome que gostaria de ser chamado
- full_name: nome completo do cliente
- cpf: único para cada cliente cadastrado
- birth_date: data de nascimento
- phone: número de telefone
Decidi não incluir o endereço nesta tabela, entendendo que o cliente pode ter mais que um endereço.

Criado tabela de endereços, como cada endereço tem cidade e estado que se repetem, foi criado também uma tabela para cada uma destas entidades, linkando através do id
- Tabela Estado
  - id_state: id do estado
  - state_uf: sigla do estado da federação
- Tabela Cidade
  - id_city: id da cidade
  - city_name: nome da cidade
  - id_state: id do estado para linkar com a tabela de estados
- Tabela de endereços
  - id_address: id do endereço
  - address: logradouro
  - number: número da rua
  - district: bairro
  - zip: CEP
  - id_city: id da cidade para linkar com a tabela de cidades
  - id_customer: id do cliente para linkar com a tabela de clientes
  - alias_address: apelido do endereço Ex. casa, trabalho

Criado tabela de fornecedores, e utilizando as tabelas de cidade e estado já criada na etapa anterior
- id_supplier: id do fornecedor
- trade: nome fantasia
- company: razão social
- cnpj: único para cada fornecedor cadastrado
- phone: número de telefone
- address: logradouro
- number: número da rua
- district: bairro
- zip: CEP
- id_city: id da cidade para linkar com a tabela de cidades

Criado tabela de categoria de produtos
- id_category: id da categoria de produtos
- name_category: nome da categoria

Criado tabela de produtos
- id_product: id do produto
- name_product: nome do produto
- unit_value: valor unitário do produto
- id_category: id da categoria para linkar com a tabela de categorias de produtos
- id_supplier: id do fornecedor para linkar com a tabela de fornecedores

Criado tabela de pagamentos
- id_payment - id da forma de pagamento
- name_payment - tipo da forma de pagamento

## Considerações Finais
Foi utilizado o MYSQL Workbench com uma imagem docker mysql para realizar os testes.