CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    detalhes JSON
);

INSERT INTO produtos (nome, detalhes)
VALUES ('Camiseta', '{"cores": ["vermelho", "azul"], "tamanhos": ["P", "M", "G"]}');

SELECT JSON_EXTRACT(detalhes, '$.cores') AS cores FROM produtos;

SELECT * FROM produtos 
WHERE JSON_CONTAINS(detalhes, '"vermelho"', '$.cores');
