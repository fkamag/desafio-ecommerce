# desafio-ecommerce
Desafio do curso de Ciência de Dados - Criando um Banco de Dados para E-commerce - conteúdo da DIO

## 1 - A partir do modelo apresentado abaixo, criar o modelo relacional para ser utilizado em um e-commerce.

<img src="ER-Ecommerce.png">

## 2 - Criar o scrip SQL para criação do esquema de banco de dados

## 3 - Persistência de dados para testes

## 4 - Recuperação de informações com queries SQL

## Resolução do desafio proposto

Começamos a criação das entidades pelo Cliente com os seguintes campos:
- alias_name: ao invés de separar nome em First Name e Last Name optei por utilizar um nome alternativo, que o usuário possa cadastrar o nome que gostaria de ser chamado
- full_name: nome completo do cliente
- cpf: único para cada cliente cadastrado
- birth_date: data de nascimento
- phone: número de telefone
Decidi não incluir o endereço nesta tabela, entendendo que o cliente pode ter mais que um endereço.

Criado tabela de endereços, como cada endereço tem cidade e estado que se repetem, foi criado também uma tabela para cada uma destas entidades, linkando através do id
- Tabela Estado
  - state_uf: sigla do estado da federação
- Tabela Cidade
  - city_name: nome da cidade
  - id_state: id do estado para linkar com a tabela de estados
- Tabela de endereços
  - address: logradouro
  - number: número da rua
  - district: bairro
  - zip: CEP
  - id_city: id da cidade para linkar com a tabela de cidades




## Considerações Finais
Foi utilizado o MYSQL Workbench com uma imagem docker mysql para realizar os testes.