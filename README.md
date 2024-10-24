# Crochetiando-nani
# E-commerce de Produtos de Crochê

Este é um projeto de e-commerce desenvolvido para a venda de produtos de crochê. O sistema foi construído utilizando **Python** com o framework **Django** e o banco de dados **MySQL**.

## Índice

- [Instalação](#instalação)
- [Funcionalidades](#funcionalidades)
- [Tecnologias Utilizadas](#tecnologias-utilizadas)

## Instalação

 1. Clone o repositório para a sua máquina local (tenha o Git já instalado):
   ```bash
     git init
     git config --local user.name "Seu nome"
     git config --local user.email "Seu email"
     git clone --branch main https://github.com/Victrosimao/Crochetiando-nani.git
  ```

 2. Crie e ative um ambiente virtual (opcional, mas recomendado):
 ```bash
python -m venv env
source env/bin/activate  # No Windows use: env\Scripts\activate
  ```
 3. Instale as dependências do projeto:
  ```bash
pip install -r requirements.txt
  ```

 4. Configure o banco de dados MySQL:

- Crie um banco de dados no MySQL com o nome banco_de_dados.
- Atualize o arquivo settings.py com as credenciais do banco de dados.

 5. Aplique as migrações do banco de dados:
  ```
python manage.py migrate
  ```

 6. Inicie o servidor local:
  ```
python manage.py runserver
  ```

  
7. *Para subir seu projeto para o github
  ```
git init 
git add . 
git commit -m "primeiro commit"
git branch -M main 
git remote add origin (junto com o link do repositório) 
git push -u origin main 
  ```


## Funcionalidades
- Catálogo de produtos de crochê com diferentes categorias e tipos.
- Sistema de carrinho de compras e checkout.
- Autenticação de usuários (cadastro e login).
- Painel administrativo para gestão de produtos, pedidos e usuários.
- Sistema de pagamento integrado (a ser implementado).

## Tecnologias Utilizadas
- Linguagem: Python
- Framework: Django
- Banco de Dados: MySQL
- Frontend: HTML, CSS, JavaScript

