-- Inserindo dados na tabela Autor
INSERT INTO Autor (Nome, Nacionalidade) VALUES
('J.K. Rowling', 'Britânica'),
('George Orwell', 'Britânica'),
('J.R.R. Tolkien', 'Britânica');

-- Inserindo dados na tabela Livro
INSERT INTO Livro (Titulo, ISBN, AnoPublicacao, AutorID) VALUES
('Harry Potter e a Pedra Filosofal', '9780747532743', 1997, 1),
('1984', '9780451524935', 1949, 2),
('O Senhor dos Anéis: A Sociedade do Anel', '9780618645619', 1954, 3);

-- Inserindo dados na tabela Cliente
INSERT INTO Cliente (Nome, CPF, Endereco) VALUES
('Maria Silva', '12345678901', 'Rua A, 123'),
('João Souza', '98765432100', 'Rua B, 456'),
('Ana Oliveira', '11223344556', 'Rua C, 789');

-- Inserindo dados na tabela Emprestimo
INSERT INTO Emprestimo (ClienteID, LivroID, DataEmprestimo, DataDevolucao) VALUES
(1, 1, '2024-11-01', '2024-11-15'),
(2, 2, '2024-11-05', '2024-11-19'),
(3, 3, '2024-11-10', '2024-11-24');
