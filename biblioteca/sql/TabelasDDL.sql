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
