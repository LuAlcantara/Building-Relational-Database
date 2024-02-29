CREATE TABLE T_UNV_ALUNO(
    id_aluno  int primary key,
    nm_aluno varchar(100) not null,
    dt_nascimento date,
    cpf varchar(14) not null unique,
    sexo char(1) check(sexo='M' OR sexo='F' OR sexo='I')
);

CREATE TABLE T_UNV_CURSO(
    id_curso int primary key,
    nm_curso varchar (100) not null
);

CREATE TABLE T_UNV_PROFESSOR(
    id_professor int primary key,
    nm_professor varchar(100) not null
);

CREATE TABLE T_UNV_DISCIPLINA(
    id_disciplina int primary key,
    nm_disciplina varchar(155) not null,
    ementa varchar(155),
    ref_biblioteca varchar(155) not null,
    metodologia varchar(155) not null,
    carga_horaria int check(carga_horaria >0 AND carga_horaria <200),
    modalidade varchar(1) check (modalidade IN('P','R')),
    id_curso_fk int REFERENCES T_UNV_CURSO(id_curso)
);

CREATE TABLE T_UNV_TURMA (
    id_turma int primary key,
    data_criacao date not null,
    nm_turma varchar(100) not null,
    situacao char,
    id_curso_pk int REFERENCES T_UNV_CURSO(id_curso)
);

CREATE TABLE T_UNV_PROFESSOR_DISCIPLINA(
    id_professor_disciplina int primary key,
    id_professor_pk int REFERENCES T_UNV_PROFESSOR(id_professor),
    id_disciplina_pk int REFERENCES T_UNV_DISCIPLINA(id_disciplina)
);

CREATE TABLE T_UNV_ALUNO_TURMA (
    id_aluno_pk int REFERENCES T_UNV_ALUNO(id_aluno),
    id_turma_pk int REFERENCES T_UNV_TURMA(id_turma),
    primary key (id_aluno_pk)
);

CREATE TABLE T_UNV_PROFESSOR_TURMA (
    id_turma_professor int primary key,
    id_professor_pk int REFERENCES T_UNV_PROFESSOR(id_professor), -- PROVAVELMENTE TEM QUE MUDAR O NOME DA COLUNA
    id_turma_pk int REFERENCES T_UNV_TURMA(id_turma) --PROVAVELMENTE TEM QUE MUDAR O NOME DA COLUNA
);

