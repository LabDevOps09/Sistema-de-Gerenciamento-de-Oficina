CREATE TABLE Cliente (
    ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255),
    CPF VARCHAR(14) UNIQUE NOT NULL,
    Telefone VARCHAR(15),
    Email VARCHAR(255)
);

CREATE TABLE Veículo (
    ID_Veículo INT PRIMARY KEY AUTO_INCREMENT,
    Placa VARCHAR(10) UNIQUE NOT NULL,
    Modelo VARCHAR(100),
    Ano INT,
    Marca VARCHAR(100),
    ID_Cliente INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

CREATE TABLE Funcionário (
    ID_Funcionario INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255),
    Cargo VARCHAR(100),
    Telefone VARCHAR(15)
);

CREATE TABLE OrdemServico (
    ID_OS INT PRIMARY KEY AUTO_INCREMENT,
    Data_Criacao DATE,
    Status VARCHAR(50),
    Valor_Total DECIMAL(10, 2),
    ID_Veículo INT,
    ID_Funcionario INT,
    FOREIGN KEY (ID_Veículo) REFERENCES Veículo(ID_Veículo),
    FOREIGN KEY (ID_Funcionario) REFERENCES Funcionário(ID_Funcionario)
);

CREATE TABLE Serviço (
    ID_Serviço INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255),
    Preco DECIMAL(10, 2)
);

CREATE TABLE DetalhesOS (
    ID_OS INT,
    ID_Serviço INT,
    Quantidade INT,
    PRIMARY KEY (ID_OS, ID_Serviço),
    FOREIGN KEY (ID_OS) REFERENCES OrdemServico(ID_OS),
    FOREIGN KEY (ID_Serviço) REFERENCES Serviço(ID_Serviço)
);
