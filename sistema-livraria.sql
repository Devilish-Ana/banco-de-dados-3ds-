-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    nomeCliente VARCHAR(100) NOT NULL,
    emailCliente VARCHAR(100) UNIQUE NOT NULL
);

-- Criação da tabela Compras
CREATE TABLE Compras (
    CompraID INT PRIMARY KEY,
    ClienteID INT,
    NomeLivro VARCHAR(150) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);
SELECT * FROM Clientes
-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    nomeCliente VARCHAR(100) NOT NULL,
    emailCliente VARCHAR(100) UNIQUE NOT NULL
);

-- Criação da tabela Compras
CREATE TABLE Compras (
    CompraID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    NomeLivro VARCHAR(150) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

-- Inserindo dados na tabela Clientes
INSERT INTO Clientes (nomeCliente, emailCliente)
VALUES
('Ana Silva', 'ana.silva@email.com'),
('Carlos Souza', 'carlos.souza@email.com'),
('Mariana Oliveira', 'mariana.oliveira@email.com');

-- Inserindo dados na tabela Compras
INSERT INTO Compras (ClienteID, NomeLivro)
VALUES
(1, 'Dom Casmurro'),
(2, 'O Pequeno Príncipe'),
(3, '1984'),
(1, 'A Moreninha'),
(2, 'Harry Potter e a Pedra Filosofal');

SELECT 
    c.nomeCliente AS NomeCliente,
    co.NomeLivro AS NomeLivro
FROM Compras co
INNER JOIN Clientes c
    ON co.ClienteID = c.ID;
