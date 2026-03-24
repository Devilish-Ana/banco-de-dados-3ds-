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
