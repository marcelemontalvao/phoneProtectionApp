# PitzizApp - Sistema de Proteção de Celular (MVP)

## Sobre o projeto

Este projeto é um **MVP (Minimum Viable Product)** de um sistema de proteção de celulares, inspirado no modelo de negócio da Pitzi.

O objetivo é permitir que usuários:

* Cadastrem celulares
* Registrem sinistros (problemas com o aparelho)
* Visualizem os dados cadastrados

O foco foi construir uma aplicação simples, funcional e com código limpo, priorizando clareza e entendimento do fluxo completo.

---

## Tecnologias utilizadas

* Ruby
* Ruby on Rails
* SQLite (banco de dados)
* HTML + ERB

---

##  Conceitos aplicados

* Arquitetura MVC (Model, View, Controller)
* CRUD (Create, Read)
* Relacionamento entre entidades (`has_many` / `belongs_to`)
* Strong Parameters
* Migrations e Active Record

---

##  Modelagem do sistema

###  Phone (Celular)

Representa um aparelho cadastrado no sistema.

**Atributos:**

* `brand` (string)
* `model_name` (string)
* `price` (integer)

**Relacionamento:**

* `has_many :claims`

---

###  Claim (Sinistro)

Representa um problema ocorrido com o celular.

**Atributos:**

* `claim_type` (string)
* `description` (text)
* `status` (string)
* `phone_id` (referência)

**Relacionamento:**

* `belongs_to :phone`

---

##  Fluxo da aplicação

1. O usuário acessa a aplicação
2. Cadastra um celular
3. Registra um sinistro para esse celular
4. Visualiza os dados cadastrados

Fluxo técnico:

```
Formulário → Controller → Model → Banco de Dados → View
```

---

##  Funcionalidades implementadas

* Cadastro de celulares
* Listagem de celulares
* Cadastro de sinistros
* Listagem de sinistros
* Associação entre celular e sinistro

---

##  Como rodar o projeto

### 1. Clonar o repositório

```bash
git clone <url-do-repositorio>
cd pitzi_app
```

### 2. Instalar dependências

```bash
bundle install
```

### 3. Criar e migrar banco de dados

```bash
rails db:create
rails db:migrate
```

### 4. Iniciar o servidor

```bash
rails server
```

### 5. Acessar no navegador

```
http://localhost:3000/phones
http://localhost:3000/claims
```

---

##  Melhorias futuras

* Adicionar validações nos modelos
* Implementar edição e exclusão (Update/Delete)
* Melhorar interface do usuário
* Adicionar autenticação de usuários
* Implementar testes automatizados com RSpec

---

##  Decisões técnicas

* Foi utilizado SQLite para simplificar o setup e acelerar o desenvolvimento
* O projeto foi desenvolvido como MVP, priorizando funcionalidades essenciais
* A estrutura segue o padrão Rails para manter clareza e organização

---

##  Objetivo do projeto

Este projeto foi desenvolvido com foco em:

* Aprendizado prático de Ruby on Rails
* Construção de um sistema realista em curto prazo
* Demonstração de conhecimento em backend e arquitetura

---

##  Contribuição

Sinta-se à vontade para contribuir ou sugerir melhorias!

---