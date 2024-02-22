DROP TABLE T_ESTUDANTE

CREATE TABLE T_ESTUDANTE (
    rm int primary key,
    nome varchar(100) CONSTRAINT nn_nome not null,
    dt_nascimento date,
    sx_biologico char(1)-- F, M, N
);

DROP TABLE T_DOCUMENTO

CREATE TABLE T_DOCUMENTO (
    id_doc int primary key,
    rg varchar(15) constraint uk_rg unique,
    cpf varchar(15) constraint uk_cpf unique,
    rm_fk int references t_estudante(rm) unique
);

DROP TABLE T_NOTAS

CREATE TABLE T_NOTAS (
    id_notas int primary key,
    cp1 number,
    cp2 number,
    cp3 number,
    id_disc_fk int references t_disciplina(id_disc),
    rm_fk int references t_estudante(rm)
);

CREATE TABLE T_DISCIPLINA (
    id_disc int primary key,
    nm_disc varchar(50)
);
