📊 MAPA - Imersão Profissional: Projeto de Banco de Dados
Este repositório contém o projeto completo de modelagem e implementação de um sistema de banco de dados para uma locadora de jogos de tabuleiro, desenvolvido como parte da atividade MAPA da disciplina Imersão Profissional: Projeto de Banco de Dados.

👤 Dados do Acadêmico
Nome: Francisco Willians da Vera Cruz Silva

RA: 23102201-5

Curso: Superior de Tecnologia em Análise e Desenvolvimento de Sistemas

Disciplina: Imersão Profissional: Projeto de Banco de Dados

🎯 Objetivo do Projeto
Desenvolver um sistema completo de banco de dados para gerenciar o aluguel de jogos de tabuleiro em uma locadora, contemplando todas as fases do processo de modelagem:

Modelo Conceitual - Identificação de entidades e relacionamentos

Modelo Lógico - Estruturação em tabelas com chaves primárias e estrangeiras

Modelo Físico - Implementação SQL no SGBD

Código SQL - Scripts de criação do banco de dados

🏢 Contexto do Sistema
Uma locadora de jogos de tabuleiro necessita de um sistema para gerenciar:

Aluguel de jogos (R$ 10,00 por jogo/semana)

Cadastro de clientes

Cadastro de jogos

Controle de atendentes

Verificação de empréstimos atrasados

🗂️ Modelagem do Banco de Dados
1. Modelo Conceitual
Entidades Identificadas:
Entidade	Descrição	Atributos Principais
Atendente	Funcionários da locadora	CPF (PK), Nome Completo
Cliente	Clientes que alugam jogos	CPF (PK), Nome, Telefone, Endereço, Email
Jogo	Jogos disponíveis para aluguel	Código_Jogo (PK), Nome, Fabricante, Máximo de Jogadores
Aluguel	Registros de aluguéis	ID_Aluguel (PK), Data, Status
2. Modelo Lógico
Tabelas do Sistema:
ATENDENTE

CPF (VARCHAR(11), PK)

Nome_Completo (VARCHAR(100))

CLIENTE

CPF (VARCHAR(11), PK)

Nome (VARCHAR(100))

Telefone (VARCHAR(15))

Endereco (VARCHAR(150))

Email (VARCHAR(100))

Atendente_Responsavel (VARCHAR(11), FK → ATENDENTE)

JOGO

Codigo_Jogo (INT, PK)

Nome_Jogo (VARCHAR(100))

Nome_Fabricante (VARCHAR(100))

Max_Jogadores (INTEGER)

Ano_Publicacao (INTEGER)

Copias_Disponiveis (INTEGER)

Atendente_Responsavel (VARCHAR(11), FK → ATENDENTE)

ALUGUEL

ID_Aluguel (SERIAL, PK)

Codigo_Jogo (INT, FK → JOGO)

CPF_Cliente (VARCHAR(11), FK → CLIENTE)

Data_Aluguel (DATE)

Atendente_Responsavel (VARCHAR(11), FK → ATENDENTE)

Status_Emprestimo (VARCHAR(20))

3. Relacionamentos
Atendente → Cliente (1:N) - Um atendente cadastra vários clientes

Atendente → Jogo (1:N) - Um atendente cadastra vários jogos

Atendente → Aluguel (1:N) - Um atendente registra vários aluguéis

Cliente → Aluguel (1:N) - Um cliente pode ter vários aluguéis

Jogo → Aluguel (1:N) - Um jogo pode ser alugado várias vezes

📋 Funcionalidades do Sistema
Cadastros:
✅ Cadastro de novos atendentes

✅ Cadastro de novos clientes

✅ Cadastro de novos jogos

✅ Registro de aluguéis

Controles:
✅ Verificação de empréstimos atrasados

✅ Controle de cópias disponíveis

✅ Rastreamento de responsável por cadastros

✅ Status de aluguéis (Em Dia/Atrasado)

Consultas:
✅ Histórico de aluguéis por cliente

✅ Jogos mais alugados

✅ Clientes com empréstimos atrasados

✅ Controle de atendentes responsáveis

🛠️ Tecnologias Utilizadas
Modelagem: Modelo Entidade-Relacionamento (MER)

SGBD: PostgreSQL (compatível com qualquer SGBD relacional)

Tipos de Dados: VARCHAR, INT, DATE, SERIAL

Diagramas: Ferramentas de modelagem para diagrama MER

📁 Estrutura dos Arquivos
📁 mapa-banco-dados-locadora/
│
├── 📄 mapa-imersao-mapa.pdf          # Documento completo da atividade (PDF)
├── 📄 mapa-imersao-mapa.docx         # Documento completo da atividade (Word)
├── 📄 README.md                      # Este arquivo
├── 📁 scripts/
│   ├── 📄 01-criacao-tabelas.sql     # Script de criação das tabelas
│   ├── 📄 02-insercoes-exemplo.sql   # Dados de exemplo
│   └── 📄 03-consultas-uteis.sql     # Consultas importantes
└── 📁 docs/
    └── 📄 diagrama-mer.png           # Diagrama Entidade-Relacionamento


🚀 Como Executar o Projeto
1. Criar o Banco de Dados:
sql
CREATE DATABASE locadora_jogos;
\c locadora_jogos;
2. Executar Scripts:
bash
psql -U seu_usuario -d locadora_jogos -f scripts/01-criacao-tabelas.sql
3. Inserir Dados de Exemplo:
bash
psql -U seu_usuario -d locadora_jogos -f scripts/02-insercoes-exemplo.sql


✅ Considerações de Projeto
Integridade Referencial:
Todas as chaves estrangeiras garantem a consistência dos dados

Deleção em cascada configurada para manter a integridade

Normalização:
Banco na 3ª Forma Normal (3FN)

Evitação de dados redundantes

Separação adequada de entidades

Performance:
Índices automáticos em chaves primárias

Tipos de dados otimizados (VARCHAR com tamanhos apropriados)

Consultas otimizadas com JOINs eficientes

📝 Referências
Padrões de modelagem de banco de dados

Normas ABNT para documentação técnica

Melhores práticas de design de banco de dados relacional

📅 Data de Entrega
Projeto desenvolvido como parte da avaliação MAPA da disciplina Imersão Profissional: Projeto de Banco de Dados, conforme cronograma acadêmico.

Desenvolvido por: Francisco Willians da Vera Cruz Silva
RA: 23102201-5
Curso: Superior de Tecnologia em Análise e Desenvolvimento de Sistemas