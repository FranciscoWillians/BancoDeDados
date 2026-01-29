-- Criação da tabela Atendente
CREATE TABLE geek_games.Atendente (
    CPF VARCHAR(11) PRIMARY KEY,
    NomeCompleto VARCHAR(100) NOT NULL
);

-- Criação da tabela Cliente
CREATE TABLE geek_games.Cliente (
    CPF VARCHAR(11) PRIMARY KEY UNIQUE,
    Nome_Cliente VARCHAR(100),
    Telefone VARCHAR(15),
    Endereco VARCHAR(150),
    Email VARCHAR(100),
    Atendente_Responsavel VARCHAR(11),
    FOREIGN KEY (Atendente_Responsavel) REFERENCES geek_games.Atendente(CPF)
); 

-- Criação da tabela Jogo
CREATE TABLE geek_games.Jogo (
    Codigo_Jogo INT PRIMARY KEY,
    Nome_Jogo VARCHAR(100) NOT NULL,
    Nome_Fabricante VARCHAR(100),
    Max_Jogadores INTEGER,
    Ano_Publicacao INTEGER,
    Copias_Disponiveis INTEGER,
    Atendente_Responsavel VARCHAR(11),
    FOREIGN KEY (Atendente_Responsavel) REFERENCES geek_games.Atendente(CPF)
);

-- Criação da tabela Aluguel
CREATE TABLE geek_games.Aluguel (
    ID_Aluguel SERIAL PRIMARY KEY,
    Codigo_Jogo INT,
    CPF_Cliente VARCHAR(11),
    Data_Aluguel DATE NOT NULL,
    Atendente_Responsavel VARCHAR(11),
    Status_Emprestimo VARCHAR(20) NOT NULL,
    FOREIGN KEY (Codigo_Jogo) REFERENCES geek_games.Jogo(Codigo_Jogo),
    FOREIGN KEY (CPF_Cliente) REFERENCES geek_games.Cliente(CPF),
    FOREIGN KEY (Atendente_Responsavel) REFERENCES geek_games.Atendente(CPF)
);*/

select * from geek_games.cliente