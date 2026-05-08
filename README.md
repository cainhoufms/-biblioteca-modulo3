# Sistema de Biblioteca - Módulo 3

Projeto da disciplina de Banco de Dados integrando modelagem SQL e Git/GitHub.

### Descrição
Sistema para controle de biblioteca com gerenciamento de livros, autores, editoras, usuários e empréstimos. Desenvolvido para aplicar conceitos de modelagem relacional e controle de versão.

### Modelo de Dados
O banco possui 5 entidades principais:
- **Autor**: Cadastro de autores
- **Editora**: Cadastro de editoras  
- **Livro**: Cadastro de livros com ISBN
- **Usuario**: Cadastro de usuários da biblioteca
- **Emprestimo**: Controle de empréstimos e devoluções

Relacionamento N:N entre Livro e Autor resolvido pela tabela `Livro_Autor`.

### Como executar
1. **Pré-requisitos**: PostgreSQL 14+ instalado
2. **Executar scripts na ordem**:
   ```bash
   psql -U postgres -d biblioteca -f sql/01_schema.sql
   psql -U postgres -d biblioteca -f sql/02_inserts.sql
   psql -U postgres -d biblioteca -f sql/03_updates_deletes.sql
