-- Inserindo dados na tabela Cliente
INSERT INTO Cliente (Nome, CPF, Telefone, Email)
VALUES ('João Silva', '12345678900', '11999999999', 'joao@gmail.com');

-- Inserindo dados na tabela Veículo
INSERT INTO Veículo (Placa, Modelo, Ano, Marca, ID_Cliente)
VALUES ('ABC1234', 'Civic', 2020, 'Honda', 1);

-- Inserindo dados na tabela Funcionário
INSERT INTO Funcionário (Nome, Cargo, Telefone)
VALUES ('Maria Santos', 'Mecânico', '11988888888');

-- Inserindo dados na tabela Serviço
INSERT INTO Serviço (Nome, Preco)
VALUES ('Troca de Óleo', 150.00), ('Alinhamento', 200.00);

-- Inserindo dados na tabela OrdemServico
INSERT INTO OrdemServico (Data_Criacao, Status, Valor_Total, ID_Veículo, ID_Funcionario)
VALUES ('2024-11-25', 'Concluída', 350.00, 1, 1);

-- Inserindo dados na tabela DetalhesOS
INSERT INTO DetalhesOS (ID_OS, ID_Serviço, Quantidade)
VALUES (1, 1, 1), (1, 2, 1);
