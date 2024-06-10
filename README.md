# Discount Campaign App

Este é um aplicativo Ruby on Rails para gerenciar campanhas de desconto em produtos.

## Requisitos

- Ruby 2.7.2
- Rails 6.1.3
- Banco de dados PostgreSQL

## Instalação

1. Clone o repositório para sua máquina local:

```
git clone https://github.com/seu-usuario/discount_campaign_app.git
```

2. Instale as dependências do projeto:

```
cd discount_campaign_app
bundle install
```

3. Crie e migre o banco de dados:

```
rails db:create
rails db:migrate
```

4. (Opcional) Se necessário, altere as configurações do banco de dados em `config/database.yml`.

5. Execute a tarefa rake para buscar produtos da API externa e atualizar o banco de dados:

````
rails sync_products:fetch
```

6. Inicie o servidor Rails:

```
rails server
```

A aplicação estará disponível em `http://localhost:3000`.
````
