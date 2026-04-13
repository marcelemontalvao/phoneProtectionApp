# PhoneProtectionApp 

## Sobre o projeto

Este projeto é um **MVP (Minimum Viable Product)** de um sistema de proteção de celulares, inspirado no modelo de negócio da Pitzi.

O objetivo é permitir que usuários:

* Cadastrem celulares
* Registrem sinistros (problemas com o aparelho)
* Visualizem os dados cadastrados

---

## Tecnologias utilizadas

* Ruby
* Ruby on Rails
* PostgreSQL
* RSpec
* Render (deploy)
---

## Deploy

A aplicação foi publicada no Render e pode ser acessada em:

[https://phoneprotectionapp.onrender.com](https://phoneprotectionapp.onrender.com)


##  Conceitos aplicados

* Arquitetura MVC (Model, View, Controller)
* CRUD (Create, Read)
* Relacionamento entre entidades (`has_many` / `belongs_to`)
* Strong Parameters
* Migrations e Active Record
* Validações de modelo 
* Testes automatizados com RSpec

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
* Validações de dados
* Status padrão para sinistros ("aberto")
* Testes automatizados para models

---

##  Como rodar o projeto

### 1. Clonar o repositório

```bash
    git clone https://github.com/marcelemontalvao/phoneProtectionApp
    cd pitzi_app
```

### 2. Instalar dependências

```bash
    bundle install
```

### 3. Configurar banco de dados

O projeto utiliza PostgreSQL. Certifique-se de que o PostgreSQL esteja instalado e em execução.

### 4. Criar e migrar banco de dados

```bash
    rails db:create
    rails db:migrate
```

### 5. Iniciar o servidor

```bash
    rails server
```

### 6. Acessar no navegador

```
    http://localhost:3000/phones
    http://localhost:3000/claims
```

---

## Testes

Foram implementados testes básicos com RSpec para validar:

* Criação de registros válidos
* Falha em validações obrigatórias

Para rodar os testes:

```bash
    bundle exec rspec
```

---

##  Melhorias futuras

* Implementar edição e exclusão (Update/Delete)
* Melhorar interface do usuário
* Adicionar autenticação de usuários
* Melhorar cobertura de testes automatizados

---

##  Decisões técnicas

* Durante o desenvolvimento inicial, o projeto utilizou SQLite para acelerar o setup local. Posteriormente, foi migrado para PostgreSQL para viabilizar o deploy em produção no Render.
* O projeto foi desenvolvido como MVP, priorizando funcionalidades essenciais
* Definição de status padrão ("aberto") para novos sinistros, garantindo consistência dos dados

---

##  Objetivo do projeto

Este projeto foi desenvolvido com foco em:

* Aprendizado prático de Ruby on Rails
* Demonstração de conhecimento em backend

---

##  Contribuição

Sinta-se à vontade para contribuir ou sugerir melhorias!

---