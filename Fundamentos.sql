-- ========================================================================================
--                     FUNDAMENTOS DE SQL - REPOSITÓRIO DE EXEMPLOS
-- ========================================================================================

-- Autor: Rodson dos Santos
-- Descrição: Repositório de exemplos de SQL cobrindo criação de banco, tabelas,
-- inserção de dados, joins, agregações, views e consultas avançadas.
-- Objetivo: Demonstrar fundamentos de SQL e técnicas de análise de vendas.

-- ========================================================================================
--                                Reset do Ambiente
-- ========================================================================================
DROP DATABASE IF EXISTS fundamentos_sql;
CREATE DATABASE fundamentos_sql
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci;
USE fundamentos_sql;

-- ========================================================================================
--                                Criação de Tabelas
-- ========================================================================================
CREATE TABLE vendas_lojas (
    id_venda INT NOT NULL AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    produto_nome VARCHAR(20) NOT NULL,
    categoria ENUM ('Roupas', 'Acessórios', 'Calçados'),
    preco DECIMAL(6,2),
    custo DECIMAL(6,2),
    quantidade INT,
    data_venda DATE,
    PRIMARY KEY (id_venda)
) DEFAULT CHARSET = utf8mb4;

CREATE TABLE clientes (
    id_cliente INT NOT NULL AUTO_INCREMENT,
    nome_cliente VARCHAR(30) NOT NULL,
    email VARCHAR(60),
    PRIMARY KEY (id_cliente)
) DEFAULT CHARSET = utf8mb4;

-- ========================================================================================
--                                 Inserção de Dados
-- ========================================================================================
INSERT INTO vendas_lojas 
(id_cliente, id_produto, produto_nome, categoria, preco, custo, quantidade, data_venda) 
VALUES
(1, 1, 'Meia', 'Roupas', 12.98, 6.04, 2, '2025-01-01'),
(2, 2, 'Boné', 'Acessórios', 21.45, 12.14, 2, '2025-01-02'),
(3, 3, 'Bermuda', 'Roupas', 101.18, 62.18, 4, '2025-01-03'),
(4, 4, 'Carteira', 'Acessórios', 233.08, 107.60, 4, '2025-01-04'),
(5, 5, 'Bolsa', 'Acessórios', 210.45, 120.43, 1, '2025-01-05'),
(6, 6, 'Relógio', 'Acessórios', 250.95, 161.24, 5, '2025-01-06'),
(3, 3, 'Bermuda', 'Roupas', 41.06, 22.21, 5, '2025-01-07'),
(2, 7, 'Camiseta', 'Roupas', 40.50, 30.08, 2, '2025-01-08'),
(1, 1, 'Meia', 'Roupas', 11.67, 5.51, 5, '2025-01-09'),
(4, 8, 'Cinto', 'Acessórios', 26.29, 18.38, 2, '2025-01-10'),
(5, 9, 'Tênis', 'Calçados', 412.31, 188.52, 1, '2025-01-11'),
(1, 1, 'Meia', 'Roupas', 9.87, 5.18, 4, '2025-01-12'),
(6, 5, 'Bolsa', 'Acessórios', 367.55, 242.79, 4, '2025-01-13'),
(4, 5, 'Bolsa', 'Acessórios', 382.91, 234.77, 4, '2025-01-14'),
(2, 6, 'Relógio', 'Acessórios', 468.89, 250.72, 5, '2025-01-15'),
(3, 7, 'Camiseta', 'Roupas', 42.92, 31.07, 1, '2025-01-16'),
(5, 2, 'Boné', 'Acessórios', 34.74, 21.87, 5, '2025-01-17'),
(6, 6, 'Relógio', 'Acessórios', 174.25, 130.36, 5, '2025-01-18'),
(1, 6, 'Relógio', 'Acessórios', 457.48, 239.54, 1, '2025-01-19'),
(2, 9, 'Tênis', 'Calçados', 215.39, 122.32, 1, '2025-01-20');

INSERT INTO clientes (nome_cliente, email) VALUES
('Carlos Silva', 'carlos.silva@email.com'),
('Mariana Souza', 'mariana.souza@email.com'),
('João Pereira', 'joao.pereira@email.com'),
('Ana Lima', NULL),
('Lucas Oliveira', 'lucas.oliveira@email.com'),
('Fernanda Costa', NULL),
('Paula Mendes', 'paula.mendes@email.com'),
('Rafael Gomes', NULL);

-- ========================================================================================
--                            Colunas geradas para análise de datas
-- ========================================================================================
ALTER TABLE vendas_lojas
ADD COLUMN mes TEXT
    GENERATED ALWAYS AS (MONTHNAME(data_venda)),
ADD COLUMN Dia INT
    GENERATED ALWAYS AS (DAY(data_venda)),
ADD COLUMN Dia_semana TEXT
    GENERATED ALWAYS AS (DAYNAME(data_venda));

-- ========================================================================================
--                       Criação da tabela completa com join
-- ========================================================================================

CREATE TABLE tabela_completa AS
SELECT T1.id_cliente,
    T2.nome_cliente,
    T2.email,
    T1.id_venda,
    T1.id_produto,
    T1.produto_nome,
    T1.categoria,
    T1.preco,
    T1.custo,
    T1.quantidade,
    T1.data_venda
FROM vendas_lojas AS T1
LEFT JOIN clientes AS T2
ON T1.id_cliente = T2.id_cliente;

-- ========================================================================================
--                       Criação de VIEWS para análises
-- ========================================================================================

-- Faturamento total
SELECT SUM(preco * quantidade) AS faturamento_total
FROM tabela_completa;

-- Lucro total
SELECT SUM((preco * quantidade) - (custo * quantidade)) AS lucro_total
FROM tabela_completa;

-- Faturamento e lucro por categoria
CREATE OR REPLACE VIEW faturamento_categoria AS
    SELECT categoria,
        SUM(preco * quantidade) AS fat_categoria,
        SUM((preco * quantidade) - (custo * quantidade)) AS lucro_categoria
    FROM tabela_completa
    GROUP BY categoria;

-- Faturamento e lucro por produto
CREATE OR REPLACE VIEW faturamento_produto AS
    SELECT produto_nome,
        SUM(preco * quantidade) AS fat_produto,
        SUM((preco * quantidade) - (custo * quantidade)) AS lucro_produto
    FROM tabela_completa
    GROUP BY produto_nome;

-- Faturamento e lucro por dia da semana
CREATE OR REPLACE VIEW faturamento_dia AS
    SELECT DAYNAME(data_venda) AS dia,
        SUM(preco * quantidade) AS fat_dia,
        SUM((preco * quantidade) - (custo * quantidade)) AS lucro_dia
    FROM tabela_completa
    GROUP BY dia;

-- ========================================================================================
--                            Consultas de Exemplo
-- ========================================================================================

-- Todos os faturamentos por categoria
SELECT * FROM faturamento_categoria ORDER BY fat_categoria DESC;

-- Todos os faturamentos por produto
SELECT * FROM faturamento_produto ORDER BY fat_produto DESC;

-- Faturamento por dia da semana
SELECT * FROM faturamento_dia ORDER BY fat_dia DESC;

-- Lista de clientes ativos
SELECT DISTINCT nome_cliente AS Lista_clientes_ativos,
    email
FROM tabela_completa;

-- Quantidade de compras e valor total por cliente
SELECT nome_cliente,
    COUNT(id_cliente) AS qnt_compras,
    SUM(preco * quantidade) AS valor_compras
FROM tabela_completa
GROUP BY nome_cliente
ORDER BY qnt_compras DESC, valor_compras DESC;

-- Clientes top (compras > 1000)
SELECT nome_cliente,
    SUM(preco * quantidade) AS valor_compras
FROM tabela_completa
GROUP BY nome_cliente
HAVING SUM(preco * quantidade) > 1000;

-- Compras realizadas às segundas-feiras
SELECT nome_cliente,
    DAYNAME(data_venda) AS dia
FROM tabela_completa
WHERE DAYNAME(data_venda) = 'Monday'
GROUP BY nome_cliente;

-- Compras dentro de um período específico
SELECT nome_cliente,
    data_venda,
    SUM(preco * quantidade) AS valor_compras
FROM tabela_completa
WHERE data_venda BETWEEN '2025-01-10' AND '2025-01-20'
GROUP BY nome_cliente;

-- Clientes sem email
SELECT nome_cliente,
    email
FROM clientes
WHERE email IS NULL
GROUP BY nome_cliente;
