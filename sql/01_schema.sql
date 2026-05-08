-- Banco: Sistema de Biblioteca - Módulo 3
-- SGBD: PostgreSQL

CREATE TABLE Autor (
    id_autor SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50)
);

CREATE TABLE Editora (
    id_editora SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    cidade VARCHAR(50)
);

CREATE TABLE Livro (
    id_livro SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    isbn VARCHAR(13) UNIQUE NOT NULL,
    ano_publicacao INT CHECK (ano_publicacao > 1000 AND ano_publicacao <= 2026),
    id_editora INT REFERENCES Editora(id_editora) ON DELETE SET NULL
);

CREATE TABLE Livro_Autor (
    id_livro INT REFERENCES Livro(id_livro) ON DELETE CASCADE,
    id_autor INT REFERENCES Autor(id_autor) ON DELETE CASCADE,
    PRIMARY KEY (id_livro, id_autor)
);

CREATE TABLE Usuario (
    id_usuario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_cadastro DATE DEFAULT CURRENT_DATE
);

CREATE TABLE Emprestimo (
    id_emprestimo SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL REFERENCES Usuario(id_usuario),
    id_livro INT NOT NULL REFERENCES Livro(id_livro),
    data_emprestimo DATE NOT NULL DEFAULT CURRENT_DATE,
    data_devolucao_prevista DATE NOT NULL,
    data_devolucao_real DATE,
    CONSTRAINT chk_datas CHECK (data_devolucao_prevista >= data_emprestimo),
    CONSTRAINT chk_devolucao CHECK (data_devolucao_real IS NULL OR data_devolucao_real >= data_emprestimo)
);
