# Sistema-de-Gerenciamento-de-Oficina

# Descrição do Projeto
Este projeto tem como objetivo modelar e implementar um sistema de gerenciamento de oficina, desde o esquema lógico até a criação e teste do banco de dados. O sistema gerencia informações sobre clientes, veículos, ordens de serviço, serviços prestados e funcionários. Ele será implementado em um banco de dados relacional.

## Etapas do Projeto
1. Mapeamento do Esquema ER para Relacional
A partir do modelo ER, realizamos o mapeamento para o modelo relacional com os seguintes refinamentos:

## Tabelas e Relacionamentos:
* Cliente: Contém dados pessoais como nome, CPF, telefone e e-mail.
* Veículo: Relacionado a um cliente. Cada veículo possui atributos como placa, modelo, ano e marca.
* Funcionário: Contém informações dos funcionários que realizam os serviços.
* Ordem de Serviço (OS): Relacionada a um veículo e gerenciada por um funcionário. Contém data de criação, status e valor total.
* Serviço: Contém o catálogo de serviços prestados, como troca de óleo ou alinhamento.
* Detalhes da OS: Tabela associativa que relaciona uma OS a vários serviços prestados.

## Modelo Relacional:
* Cliente (ID_Cliente, Nome, CPF, Telefone, Email)
* Veículo (ID_Veículo, Placa, Modelo, Ano, Marca, ID_Cliente FK)
* Funcionário (ID_Funcionario, Nome, Cargo, Telefone)
* OrdemServico (ID_OS, Data_Criacao, Status, Valor_Total, ID_Veículo FK, ID_Funcionario FK)
* Serviço (ID_Serviço, Nome, Preco)
* DetalhesOS (ID_OS FK, ID_Serviço FK, Quantidade)

# Estrutura do Repositório

Sistema-Oficina/

*  schema.sql         # Criação do esquema do banco de dados
*  data.sql           # Inserção de dados para testes
*  queries.sql        # Consultas SQL
*  README.md          # Documentação do projeto
