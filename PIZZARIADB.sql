CREATE DATABASE PizzariaDB
GO

USE PizzariaDB;
GO

-- TABELA 1 [CLIENTES]

CREATE TABLE Clientes (
id_cliente INT IDENTITY(1,1) PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
CPF VARCHAR(14) NOT NULL,
Telefone VARCHAR(20) NULL,
Endereco VARCHAR(150) NOT NULL,
Cidade VARCHAR(60) NOT NULL
);

-- TABELA 2 [PIZZAS]

CREATE TABLE Pizzas (
id_pizza INT IDENTITY(1,1) PRIMARY KEY,
nome_pizza VARCHAR(100) NOT NULL,
categoria VARCHAR(50) NOT NULL,
tamanho VARCHAR(20) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
quantidade_estoque VARCHAR(150) NOT NULL,
);

-- TABELA 3 [FUNCIONARIOS]

CREATE TABLE Funcionarios (
id_funcionario INT IDENTITY(1,1) PRIMARY KEY,
Nome VARCHAR(100) NOT NULL,
Cargo VARCHAR(50) NOT NULL,
Salario DECIMAL(10,2) NOT NULL,
Data_admissao DATE NOT NULL,
);

-- TABELA 4 [Pedidos]

CREATE TABLE Pedidos (
id_pedido INT IDENTITY(1,1) PRIMARY KEY,
id_cliente INT NOT NULL,
id_pizza INT NOT NULL,
id_funcionario INT NOT NULL,
Quantidade INT NOT NULL,
Data_pedido DATE NOT NULL,

FOREIGN KEY (id_cliente) -- REFENCIANDO CHAVE ESTRANGEIRA TABELA 1 [CLIENTES]
	REFERENCES Clientes (id_cliente),

FOREIGN KEY (id_pizza) -- REFENCIANDO CHAVE ESTRANGEIRA TABELA 2 [PIZZAS]
	REFERENCES Pizzas (id_pizza),

FOREIGN KEY (id_funcionario) -- REFENCIANDO CHAVE ESTRANGEIRA TABELA 3 [FUNCIOANARIOS]
	REFERENCES Funcionarios (id_funcionario)
);

INSERT INTO Clientes (nome, CPF, Telefone, Endereco, Cidade) -- INSERT DE DADOS TABELA CLIENTE.
VALUES
('Luis Felipe', '045.544.901-95', '1197058-4077', 'Av Santo Antonio 1261', 'Osasco'),
('Heitor Bernardo', '258.654.987-95', '1198751-5487', 'Rua da Esperan a 958', 'Carapicuiba'),
('Felipe Souza', '321.852.874-32', '1132815-5458', 'Av do Shopping 152', 'Bauru'),
('Maycon Gama', '548.326.521-98', '1198528-5258', 'Rua Terezopolis 987', 'Caucaia'),
('Myrella Nataely', '659.852.968-21', '1198526-6584', 'Av Motomoto 1212', 'Embu das Artes'),
('Gabriela Silva', '214.958.963-78', '1198518-6582', 'Rua da Saudade 11', 'Barueri'),
('Sirlei Aparecida', '632.587.852-12', '1198725-9354', 'Av Professor Dalto 99', 'Grajau'),
('Thaina Sousa', '412.852.756-85', '1198523-8741', 'Rua Professora Mikelly 321', 'Jabaquara'),
('Rene Rodrigues', '321.852.002-87', '1187245-9825', 'Av do Marvel 124', 'Socorro'),
('Daniel Guss', '547.951.258.32', '1125873-2174', 'Rua do calcadao 254', 'Berrini');
GO

INSERT INTO Pizzas (nome_pizza, categoria, tamanho, preco, quantidade_estoque) -- TABELA 2 [PIZZAS]
VALUES
('Californiana', 'Salgada', 'Grande', '69.90', '10'), -- COLOCAR PONTO (N O USAR VIRGULA PARA VALORES(PRE O)
('Portuguesa', 'Salgada', 'Grande', '69.90', '15'),
('Calabresa', 'Salgada', 'Grande', '69.90', '9'),
('Moda da casa', 'Salgada', 'Media', '49.90', '10'),
('Queijo', 'Salgada', 'Media', '49.90', '12'),
('Strogonoff', 'Salgada', 'Media', '49.90', '14'),
('Toscana', 'Salgada', 'Pequena', '39.90', '17'),
('Frango', 'Salgada', 'Pequena', '39.90', '14'),
('Frango com Catupiry', 'Salgada', 'Pequena', '39.90', '9'),
('Banana Flambada', 'Doce', 'Media', '59.90', '10'),
('Prestigio', 'Doce', 'Grande', '69.90', '16'),
('Chocolate', 'Doce', 'Grande', '69.90', '20');
GO

INSERT INTO Funcionarios (Nome, Cargo, Salario, Data_admissao) -- TABELA 3 [FUNCIONARIOS]
VALUES
('Yuri Silveira', 'Pizzaiolo', '3000.00', '01/12/1999'),
('Renata Oliveira', 'Caixa', '2500.00', '08/12/2008'),
('Joao Maria', 'Gar on', '2800.00', '12/12/2002'),
('Natan Vieira', 'Auxiliar de Cozinha', '2000.00', '09/12/2020'),
('Vania Silva', 'Servicos Gerais', '1800.00', '12/09/2022');
GO


