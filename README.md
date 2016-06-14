# Heroes [![Build Status](https://travis-ci.org/LucianoPC/heroes.svg?branch=travis)](https://travis-ci.org/LucianoPC/heroes) [![Code Climate](https://codeclimate.com/github/LucianoPC/heroes/badges/gpa.svg)](https://codeclimate.com/github/LucianoPC/heroes)

Projeto para a disciplina de Orientação a Objetos


## Versão do Ruby
    2.3.1

## Instalação
    Para instalar as dependências do projeto execute o seguinte comando:
    $ bundle install

## Banco de dados
    Comando para criar o banco de dados:
    $ rake db:create

    Comando para executar as migrações, ou seja, criar as tabelas no banco:
    $ rake db:migrate

    Comando para deletar o banco:
    $ rake db:drop

## Executar o servidor
    Execute o seguinte comando:
    $ rails server

    ou:
    $ rails s

## Testes
    Comandos para executar os testes

    Testes unitários:
    $ rake test:units

    Testes funcionais:
    $ rake test:functionals
