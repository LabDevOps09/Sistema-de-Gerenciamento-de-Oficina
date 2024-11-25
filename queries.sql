SELECT ID_OS, Data_Criacao, Valor_Total
FROM OrdemServico
WHERE Status = 'Concluída';


SELECT Veículo.Placa, Veículo.Modelo, Veículo.Ano, Veículo.Marca
FROM Veículo
JOIN Cliente ON Veículo.ID_Cliente = Cliente.ID_Cliente
WHERE Cliente.Nome = 'João Silva';


SELECT ID_OS, SUM(Serviço.Preco * DetalhesOS.Quantidade) AS Total_Serviços
FROM DetalhesOS
JOIN Serviço ON DetalhesOS.ID_Serviço = Serviço.ID_Serviço
GROUP BY ID_OS;


SELECT OrdemServico.ID_OS, Serviço.Nome, Serviço.Preco
FROM DetalhesOS
JOIN Serviço ON DetalhesOS.ID_Serviço = Serviço.ID_Serviço
JOIN OrdemServico ON DetalhesOS.ID_OS = OrdemServico.ID_OS
ORDER BY Serviço.Preco DESC;


SELECT Nome, COUNT(*) AS Quantidade, AVG(Preco) AS Preco_Medio
FROM Serviço
WHERE Preco > 150
GROUP BY Nome
HAVING COUNT(*) > 1;
