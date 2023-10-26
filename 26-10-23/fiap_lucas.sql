    CREATE TABLE T_ALUNO (
        id_aluno int,
        rm_aluno varchar2(100)
    );
    
    CREATE TABLE T_ENDERECO (
        cep int primary key,
        nm_rua varchar2(100),
        cidade varchar2(100)
    );
    
-- Remover tabela
drop table T_ALUNO;

--Meu primeiro comentário

/* 
Meu comentário em multiplas linhas
*/