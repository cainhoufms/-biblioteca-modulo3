
INSERT INTO Autor (nome, nacionalidade) VALUES 
('Machado de Assis', 'Brasileira'),
('Clarice Lispector', 'Brasileira'),
('George Orwell', 'Britânica'),
('J.K. Rowling', 'Britânica');

INSERT INTO Editora (nome, cidade) VALUES 
('Companhia das Letras', 'São Paulo'),
('Editora Record', 'Rio de Janeiro'),
('Rocco', 'Rio de Janeiro');

INSERT INTO Livro (titulo, isbn, ano_publicacao, id_editora) VALUES 
('Dom Casmurro', '9788535902773', 1899, 1),
('A Hora da Estrela', '9788520920543', 1977, 2),
('1984', '9780451524935', 1949, 1),
('Harry Potter e a Pedra Filosofal', '9788532530783', 1997, 3);

INSERT INTO Livro_Autor (id_livro, id_autor) VALUES 
(1, 1),  -- Dom Casmurro -> Machado de Assis
(2, 2),  -- A Hora da Estrela -> Clarice Lispector
(3, 3),  -- 1984 -> George Orwell
(4, 4);  -- Harry Potter -> J.K. Rowling

INSERT INTO Usuario (nome, email) VALUES 
('João Silva', 'joao.silva@email.com'),
('Maria Santos', 'maria.santos@email.com'),
('Pedro Oliveira', 'pedro.oliveira@email.com');

INSERT INTO Emprestimo (id_usuario, id_livro, data_emprestimo, data_devolucao_prevista) VALUES 
(1, 1, '2026-05-01', '2026-05-15'),
(2, 3, '2026-05-03', '2026-05-17'),
(3, 4, '2026-05-05', '2026-05-19'),
(1, 2, '2026-04-20', '2026-05-04');
