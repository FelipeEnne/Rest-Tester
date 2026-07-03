# Rest-Tester

Aplicação Rails de estudo baseada na lição
[Basic Routes, Views and Controllers](https://www.theodinproject.com/courses/ruby-on-rails/lessons/basic-routes-views-and-controllers)
do The Odin Project.

O projeto demonstra rotas, controllers e views do recurso `users`, além de um
script simples para fazer requisições HTTP contra o servidor local.

## Stack

- Ruby 3.4.9
- Rails 8.1
- Puma
- SQLite3
- Propshaft + Importmap (sem Node.js)

A stack foi atualizada para versões suportadas, eliminando dependências legadas
com vulnerabilidades conhecidas (Ruby 2.6 / Rails 5.2 e gems associadas).

## Requisitos

- Ruby 3.4.9
- Bundler

## Setup

```bash
bundle install
bin/rails db:prepare
```

## Executar o servidor

```bash
bin/rails server
```

A aplicação fica disponível em [http://localhost:3000](http://localhost:3000).

### Rotas principais

| Método | Caminho           | Action |
|--------|-------------------|--------|
| GET    | `/users`          | index  |
| GET    | `/users/:id`      | show   |
| GET    | `/users/new`      | new    |
| GET    | `/users/:id/edit` | edit   |
| POST   | `/users`          | create |

Health check: `GET /up`

## Script REST

Com o servidor em execução, você pode exercitar as rotas com o script em
`app/script/rest_requestor.rb` (usa `Net::HTTP` da biblioteca padrão):

```bash
ruby app/script/rest_requestor.rb
```

Por padrão o script faz `POST /users`. As chamadas `GET` estão comentadas no
arquivo e podem ser ativadas conforme necessário.

## Testes

```bash
bin/rails test
```

## Auditoria de dependências

```bash
bundle exec bundler-audit check --update
```
