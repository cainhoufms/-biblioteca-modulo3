

UPDATE Emprestimo 
SET data_devolucao_real = '2026-05-12' 
WHERE id_emprestimo = 1;


UPDATE Emprestimo 
SET data_devolucao_real = '2026-05-02' 
WHERE id_emprestimo = 4;


UPDATE Usuario 
SET email = 'joao.silva.biblioteca@email.com' 
WHERE id_usuario = 1;


UPDATE Livro 
SET ano_publicacao = 1998 
WHERE isbn = '9788532530783';


DELETE FROM Emprestimo 
WHERE id_emprestimo = 3 AND data_devolucao_real IS NULL;


DELETE FROM Livro_Autor WHERE id_autor = 4;
DELETE FROM Autor WHERE id_autor = 4;
