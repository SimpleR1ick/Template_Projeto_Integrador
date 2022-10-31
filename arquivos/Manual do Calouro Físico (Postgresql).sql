DROP TABLE IF EXISTS acesso CASCADE;
DROP TABLE IF EXISTS evento CASCADE;
DROP TABLE IF EXISTS campus CASCADE;
DROP TABLE IF EXISTS usuario CASCADE;
DROP TABLE IF EXISTS campus_curso CASCADE;
DROP TABLE IF EXISTS aluno CASCADE;
DROP TABLE IF EXISTS chave CASCADE;
DROP TABLE IF EXISTS curso CASCADE;
DROP TABLE IF EXISTS contato CASCADE;
DROP TABLE IF EXISTS servidor CASCADE;
DROP TABLE IF EXISTS turma CASCADE;
DROP TABLE IF EXISTS horario_aula CASCADE;


/* Modelo Físico */

CREATE TABLE acesso (
	id_acesso SERIAL PRIMARY KEY,
    dsc_acesso VARCHAR(10)
);

CREATE TABLE evento (
	id_evento SERIAL PRIMARY KEY,
    dsc_evento VARCHAR(100),
    dat_evento TIMESTAMP,
    fk_campus_id_campus SERIAL
);

CREATE TABLE campus (
	id_campus SERIAL PRIMARY KEY,
    dsc_campus VARCHAR(50)
);

CREATE TABLE usuario (
    id_usuario SERIAL PRIMARY KEY,
    nom_usuario VARCHAR(50),
    email VARCHAR(100),
    senha VARCHAR(250),
    img_perfil VARCHAR(300),
    add_data TIMESTAMP,
    fk_acesso_id_acesso SERIAL,
    fk_state_id_state SERIAL
);

CREATE TABLE campus_curso (
	fk_campus_id_campus SERIAL,
    fk_curso_id_curso SERIAL
);

CREATE TABLE aluno (
	num_matricula VARCHAR(20),
    fk_usuario_id_usuario SERIAL PRIMARY KEY,
    fk_turma_id_turma SERIAL
);

CREATE TABLE chave (
	chave_confirma VARCHAR(255),
    fk_usuario_id_usuario SERIAL
);

CREATE TABLE curso (
	id_curso SERIAL PRIMARY KEY,
    dsc_curso VARCHAR(50)
);

CREATE TABLE contato (
	fk_servidor_fk_usuario_id_usuario SERIAL,
    fk_tipo_contato_id_tipo SERIAL,
    dsc_contato VARCHAR(50),
    id_contato SERIAL PRIMARY KEY
);

CREATE TABLE servidor (
	fk_usuario_id_usuario SERIAL PRIMARY KEY,
    fk_sala_id_sala SERIAL
);

CREATE TABLE turma (
	id_turma SERIAL PRIMARY KEY,
    num_modulo INT,
    fk_curso_id_curso SERIAL
);

CREATE TABLE horario_aula (
	id_horario_aula SERIAL PRIMARY KEY,
    hora_aula_inicio TIME,
    hora_aula_fim TIME
);


 
ALTER TABLE usuario ADD CONSTRAINT FK_usuario_2
    FOREIGN KEY (fk_acesso_id_acesso)
    REFERENCES acesso (id_acesso)
    ON DELETE RESTRICT;
 
ALTER TABLE servidor ADD CONSTRAINT FK_servidor_2
    FOREIGN KEY (fk_usuario_id_usuario)
    REFERENCES usuario (id_usuario)
    ON DELETE CASCADE;
 
ALTER TABLE servidor ADD CONSTRAINT FK_servidor_3
    FOREIGN KEY (fk_sala_id_sala)
    REFERENCES sala (id_sala)
    ON DELETE CASCADE;
 
ALTER TABLE aluno ADD CONSTRAINT FK_aluno_2
    FOREIGN KEY (fk_usuario_id_usuario)
    REFERENCES usuario (id_usuario)
    ON DELETE CASCADE;
 
ALTER TABLE aluno ADD CONSTRAINT FK_aluno_3
    FOREIGN KEY (fk_turma_id_turma)
    REFERENCES turma (id_turma)
    ON DELETE CASCADE;
 
ALTER TABLE evento ADD CONSTRAINT FK_evento_2
    FOREIGN KEY (fk_campus_id_campus)
    REFERENCES campus (id_campus)
    ON DELETE CASCADE;
 
ALTER TABLE turma ADD CONSTRAINT FK_turma_2
    FOREIGN KEY (fk_curso_id_curso)
    REFERENCES curso (id_curso)
    ON DELETE RESTRICT;
 
ALTER TABLE professor ADD CONSTRAINT FK_professor_2
    FOREIGN KEY (fk_servidor_fk_usuario_id_usuario)
    REFERENCES servidor (fk_usuario_id_usuario)
    ON DELETE CASCADE;
 
ALTER TABLE administrativo ADD CONSTRAINT FK_administrativo_2
    FOREIGN KEY (fk_servidor_fk_usuario_id_usuario)
    REFERENCES servidor (fk_usuario_id_usuario)
    ON DELETE CASCADE;
 
ALTER TABLE administrativo ADD CONSTRAINT FK_administrativo_3
    FOREIGN KEY (fk_setor_id_setor)
    REFERENCES setor (id_setor)
    ON DELETE CASCADE;
 
ALTER TABLE professor_disciplina ADD CONSTRAINT FK_professor_disciplina_2
    FOREIGN KEY (fk_disciplina_id_disciplina)
    REFERENCES disciplina (id_disciplina);
 
ALTER TABLE professor_disciplina ADD CONSTRAINT FK_professor_disciplina_3
    FOREIGN KEY (fk_professor_fk_servidor_fk_usuario_id_usuario)
    REFERENCES professor (fk_servidor_fk_usuario_id_usuario);
 
ALTER TABLE chave ADD CONSTRAINT FK_chave_1
    FOREIGN KEY (fk_usuario_id_usuario)
    REFERENCES usuario (id_usuario)
    ON DELETE CASCADE;
 
ALTER TABLE aula ADD CONSTRAINT FK_aula_1
    FOREIGN KEY (fk_horario_aula_id_horario_aula)
    REFERENCES horario_aula (id_horario_aula)
    ON DELETE NO ACTION;
 
ALTER TABLE aula ADD CONSTRAINT FK_aula_2
    FOREIGN KEY (fk_turma_id_turma)
    REFERENCES turma (id_turma)
    ON DELETE NO ACTION;
 
ALTER TABLE aula ADD CONSTRAINT FK_aula_3
    FOREIGN KEY (fk_sala_aula_id_sala_aula)
    REFERENCES sala_aula (id_sala_aula)
    ON DELETE NO ACTION;
 
ALTER TABLE aula ADD CONSTRAINT FK_aula_4
    FOREIGN KEY (fk_dia_semana_id_dia_semana)
    REFERENCES dia_semana (id_dia_semana)
    ON DELETE NO ACTION;
 
ALTER TABLE aula ADD CONSTRAINT FK_aula_5
    FOREIGN KEY (fk_professor_disciplina_id_professor_disciplina)
    REFERENCES professor_disciplina (id_professor_disciplina)
    ON DELETE NO ACTION;
 
ALTER TABLE contato ADD CONSTRAINT FK_contato_2
    FOREIGN KEY (fk_servidor_fk_usuario_id_usuario)
    REFERENCES servidor (fk_usuario_id_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE contato ADD CONSTRAINT FK_contato_3
    FOREIGN KEY (fk_tipo_contato_id_tipo)
    REFERENCES tipo_contato (id_tipo)
    ON DELETE SET NULL;
 
ALTER TABLE servidor_horario ADD CONSTRAINT FK_servidor_horario_1
    FOREIGN KEY (fk_servidor_fk_usuario_id_usuario)
    REFERENCES servidor (fk_usuario_id_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE servidor_horario ADD CONSTRAINT FK_servidor_horario_2
    FOREIGN KEY (fk_horario_id_horario)
    REFERENCES horario (id_horario)
    ON DELETE SET NULL;
 
ALTER TABLE campus_curso ADD CONSTRAINT FK_campus_curso_1
    FOREIGN KEY (fk_campus_id_campus)
    REFERENCES campus (id_campus)
    ON DELETE RESTRICT;
 
ALTER TABLE campus_curso ADD CONSTRAINT FK_campus_curso_2
    FOREIGN KEY (fk_curso_id_curso)
    REFERENCES curso (id_curso)
    ON DELETE RESTRICT;