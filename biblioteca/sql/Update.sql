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
