
SELECT 
    l.titulo AS "Título do Livro",
    a.nome AS "Autor",
    e.nome AS "Editora",
    l.ano_publicacao AS "Ano"
FROM Livro l
JOIN Livro_Autor la ON l.id_livro = la.id_livro
JOIN Autor a ON la.id_autor = a.id_autor
LEFT JOIN Editora e ON l.id_editora = e.id_editora
ORDER BY l.titulo;


SELECT 
    u.nome AS "Usuário",
    l.titulo AS "Livro",
    em.data_emprestimo AS "Data Empréstimo",
    em.data_devolucao_prevista AS "Devolver até"
FROM Emprestimo em
JOIN Usuario u ON em.id_usuario = u.id_usuario
JOIN Livro l ON em.id_livro = l.id_livro
WHERE em.data_devolucao_real IS NULL;


SELECT 
    a.nome AS "Autor",
    COUNT(la.id_livro) AS "Total de Livros"
FROM Autor a
LEFT JOIN Livro_Autor la ON a.id_autor = la.id_autor
GROUP BY a.nome
ORDER BY "Total de Livros" DESC;


SELECT 
    u.nome AS "Usuário",
    u.email,
    COUNT(em.id_emprestimo) AS "Total Empréstimos"
FROM Usuario u
LEFT JOIN Emprestimo em ON u.id_usuario = em.id_usuario
GROUP BY u.id_usuario, u.nome, u.email
ORDER BY "Total Empréstimos" DESC;


SELECT 
    l.titulo,
    l.isbn
FROM Livro l
LEFT JOIN Emprestimo em ON l.id_livro = em.id_livro
WHERE em.id_emprestimo IS NULL;


SELECT 
    u.nome AS "Usuário",
    l.titulo AS "Livro",
    em.data_devolucao_prevista,
    CURRENT_DATE - em.data_devolucao_prevista AS "Dias de atraso"
FROM Emprestimo em
JOIN Usuario u ON em.id_usuario = u.id_usuario
JOIN Livro l ON em.id_livro = l.id_livro
WHERE em.data_devolucao_real IS NULL 
AND em.data_devolucao_prevista < CURRENT_DATE;
