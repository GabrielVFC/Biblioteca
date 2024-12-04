# Sistema de Controle de Biblioteca

Este repositório contém um sistema de controle para gerenciar livros, autores, clientes e empréstimos em uma biblioteca. O banco de dados foi desenvolvido utilizando SQLite e segue o modelo físico descrito abaixo.

## Estrutura do Banco de Dados

O banco de dados possui quatro tabelas principais:

1. **Autor**: Armazena as informações dos autores.
2. **Livro**: Armazena os livros disponíveis na biblioteca.
3. **Cliente**: Armazena os clientes cadastrados na biblioteca.
4. **Emprestimo**: Armazena as informações dos empréstimos realizados.

## Modelo Físico (DDL)

```sql
-- Criando a tabela Autor
CREATE TABLE Autor (
    AutorID INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome TEXT NOT NULL,
    Nacionalidade TEXT NOT NULL
);

-- Criando a tabela Livro
CREATE TABLE Livro (
    LivroID INTEGER PRIMARY KEY AUTOINCREMENT,
    Titulo TEXT NOT NULL,
    ISBN TEXT UNIQUE NOT NULL,
    AnoPublicacao INTEGER NOT NULL,
    AutorID INTEGER,
    FOREIGN KEY (AutorID) REFERENCES Autor(AutorID)
);

-- Criando a tabela Cliente
CREATE TABLE Cliente (
    ClienteID INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome TEXT NOT NULL,
    CPF TEXT UNIQUE NOT NULL,
    Endereco TEXT NOT NULL
);

-- Criando a tabela Emprestimo
CREATE TABLE Emprestimo (
    EmprestimoID INTEGER PRIMARY KEY AUTOINCREMENT,
    ClienteID INTEGER,
    LivroID INTEGER,
    DataEmprestimo DATE NOT NULL,
    DataDevolucao DATE,
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID),
    FOREIGN KEY (LivroID) REFERENCES Livro(LivroID)
);
```
## Inserção de Dados (DML)
```sql
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
```
## Atualização de Dados (UPDATE)
```sql
-- Atualizando o nome de um autor
UPDATE Autor
SET Nome = 'J.K. Rowling'
WHERE AutorID = 1;

-- Atualizando o endereço de um cliente
UPDATE Cliente
SET Endereco = 'Rua X, 101'
WHERE ClienteID = 1;

-- Atualizando a data de devolução de um empréstimo
UPDATE Emprestimo
SET DataDevolucao = '2024-11-20'
WHERE EmprestimoID = 1;
```
## Exclusão de Dados (DELETE)
```sql
-- Excluindo um livro da biblioteca
DELETE FROM Livro
WHERE LivroID = 2;

-- Excluindo um cliente do sistema
DELETE FROM Cliente
WHERE ClienteID = 3;

-- Excluindo um empréstimo
DELETE FROM Emprestimo
WHERE EmprestimoID = 3;
```
# Organização de Arquivos
## Arquivo de Atualizações (update.sql)
```sql
-- Atualizando o nome de um autor
UPDATE Autor
SET Nome = 'J.K. Rowling'
WHERE AutorID = 1;

-- Atualizando o endereço de um cliente
UPDATE Cliente
SET Endereco = 'Rua X, 101'
WHERE ClienteID = 1;
```
Arquivo de Exclusões (delete.sql)
```sql
-- Excluindo um livro da biblioteca
DELETE FROM Livro
WHERE LivroID = 2;

-- Excluindo um cliente do sistema
DELETE FROM Cliente
WHERE ClienteID = 3;
```
