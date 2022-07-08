DROP TABLE IF EXISTS Turma CASCADE;
DROP TABLE IF EXISTS Dia_Semana CASCADE;
DROP TABLE IF EXISTS Horario CASCADE;
DROP TABLE IF EXISTS Sala CASCADE;
DROP TABLE IF EXISTS Eventos CASCADE;
DROP TABLE IF EXISTS Disciplina CASCADE;
DROP TABLE IF EXISTS Tipo_contato CASCADE;
DROP TABLE IF EXISTS Usuario CASCADE;
DROP TABLE IF EXISTS Professor CASCADE;
DROP TABLE IF EXISTS Servidor CASCADE;
DROP TABLE IF EXISTS Aula CASCADE;
DROP TABLE IF EXISTS Pertence CASCADE;
DROP TABLE IF EXISTS Tem CASCADE;
DROP TABLE IF EXISTS Possui CASCADE;
DROP TABLE IF EXISTS Trabalha CASCADE;


/* Manual do Calouro*/

CREATE TABLE Turma (
    id_turma SERIAL PRIMARY KEY,
    dsc_turma VARCHAR(50)
);

CREATE TABLE Dia_Semana (
    id_dia_semana SERIAL PRIMARY KEY,
    dsc_dia_semana VARCHAR(15)
);

CREATE TABLE Horario (
    id_horario SERIAL PRIMARY KEY,
    hora_inicio TIME,
    hora_fim TIME
);

CREATE TABLE Sala (
    id_sala SERIAL PRIMARY KEY,
    dsc_sala VARCHAR(50)
);

CREATE TABLE Eventos (
    id_eventos SERIAL PRIMARY KEY,
    data_evento TIMESTAMP,
    dsc_evento VARCHAR(100),
    fk_Usuario_id_usuario SERIAL
);

CREATE TABLE Disciplina (
    id_disc SERIAL PRIMARY KEY,
    dsc_disc VARCHAR(30)
);

CREATE TABLE Tipo_contato (
    id_tipo SERIAL PRIMARY KEY,
    dsc_tipo VARCHAR(30)
);

CREATE TABLE Usuario (
    id_usuario SERIAL PRIMARY KEY,
    ativo BIT,
    acesso TINYINT(1),
    nome VARCHAR(50),
    email VARCHAR(100),
    senha VARCHAR(250),
    img_perfil VARCHAR(300)
);

CREATE TABLE Professor (
    regras TEXT,
    fk_Usuario_id_usuario SERIAL
);

CREATE TABLE Servidor (
    horario_inicio TIME,
    horario_fim TIME,
    fk_Usuario_id_usuario SERIAL
);

CREATE TABLE Aula (
    fk_Horario_id_horario SERIAL,
    fk_Dia_Semana_id_dia_semana SERIAL,
    fk_Turma_id_turma SERIAL,
    fk_Disciplina_id_disc SERIAL,
    fk_Sala_id_sala SERIAL
);

CREATE TABLE Pertence (
    fk_Usuario_id_usuario SERIAL,
    fk_Turma_id_turma SERIAL
);

CREATE TABLE Tem (
    fk_Usuario_id_usuario SERIAL,
    fk_Tipo_contato_id_tipo SERIAL,
    id_contato SERIAL PRIMARY KEY,
    dsc_contato VARCHAR(50)
);

CREATE TABLE Possui (
    fk_Sala_id_sala SERIAL,
    fk_Usuario_id_usuario SERIAL
);

CREATE TABLE Trabalha (
    fk_Servidor_fk_Usuario_id_usuario SERIAL,
    fk_Dia_Semana_id_dia_semana SERIAL
);
 
ALTER TABLE Eventos ADD CONSTRAINT FK_Eventos_2
    FOREIGN KEY (fk_Usuario_id_usuario)
    REFERENCES Usuario (id_usuario)
    ON DELETE CASCADE;
 
ALTER TABLE Professor ADD CONSTRAINT FK_Professor_1
    FOREIGN KEY (fk_Usuario_id_usuario)
    REFERENCES Usuario (id_usuario)
    ON DELETE CASCADE;
 
ALTER TABLE Servidor ADD CONSTRAINT FK_Servidor_1
    FOREIGN KEY (fk_Usuario_id_usuario)
    REFERENCES Usuario (id_usuario)
    ON DELETE CASCADE;
 
ALTER TABLE Aula_Horario_Dia_Semana_Turma_Disciplina_Sala ADD CONSTRAINT FK_Aula_Horario_Dia_Semana_Turma_Disciplina_Sala_1
    FOREIGN KEY (fk_Horario_id_horario)
    REFERENCES Horario (id_horario)
    ON DELETE NO ACTION;
 
ALTER TABLE Aula_Horario_Dia_Semana_Turma_Disciplina_Sala ADD CONSTRAINT FK_Aula_Horario_Dia_Semana_Turma_Disciplina_Sala_2
    FOREIGN KEY (fk_Dia_Semana_id_dia_semana)
    REFERENCES Dia_Semana (id_dia_semana)
    ON DELETE NO ACTION;
 
ALTER TABLE Aula_Horario_Dia_Semana_Turma_Disciplina_Sala ADD CONSTRAINT FK_Aula_Horario_Dia_Semana_Turma_Disciplina_Sala_3
    FOREIGN KEY (fk_Turma_id_turma)
    REFERENCES Turma (id_turma)
    ON DELETE NO ACTION;
 
ALTER TABLE Aula_Horario_Dia_Semana_Turma_Disciplina_Sala ADD CONSTRAINT FK_Aula_Horario_Dia_Semana_Turma_Disciplina_Sala_4
    FOREIGN KEY (fk_Disciplina_id_disc)
    REFERENCES Disciplina (id_disc)
    ON DELETE NO ACTION;
 
ALTER TABLE Aula_Horario_Dia_Semana_Turma_Disciplina_Sala ADD CONSTRAINT FK_Aula_Horario_Dia_Semana_Turma_Disciplina_Sala_5
    FOREIGN KEY (fk_Sala_id_sala)
    REFERENCES Sala (id_sala)
    ON DELETE NO ACTION;
 
ALTER TABLE Pertence ADD CONSTRAINT FK_Pertence_1
    FOREIGN KEY (fk_Usuario_id_usuario)
    REFERENCES Usuario (id_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Pertence ADD CONSTRAINT FK_Pertence_2
    FOREIGN KEY (fk_Turma_id_turma)
    REFERENCES Turma (id_turma)
    ON DELETE SET NULL;
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_2
    FOREIGN KEY (fk_Usuario_id_usuario)
    REFERENCES Usuario (id_usuario)
    ON DELETE RESTRICT;
 
ALTER TABLE Tem ADD CONSTRAINT FK_Tem_3
    FOREIGN KEY (fk_Tipo_contato_id_tipo)
    REFERENCES Tipo_contato (id_tipo)
    ON DELETE SET NULL;
 
ALTER TABLE Possui ADD CONSTRAINT FK_Possui_1
    FOREIGN KEY (fk_Sala_id_sala)
    REFERENCES Sala (id_sala)
    ON DELETE SET NULL;
 
ALTER TABLE Possui ADD CONSTRAINT FK_Possui_2
    FOREIGN KEY (fk_Usuario_id_usuario)
    REFERENCES Usuario (id_usuario)
    ON DELETE SET NULL;
 
ALTER TABLE Trabalha ADD CONSTRAINT FK_Trabalha_1
    FOREIGN KEY (fk_Servidor_fk_Usuario_id_usuario???)
    REFERENCES ??? (???)
    ON DELETE SET NULL;
 
ALTER TABLE Trabalha ADD CONSTRAINT FK_Trabalha_2
    FOREIGN KEY (fk_Dia_Semana_id_dia_semana)
    REFERENCES Dia_Semana (id_dia_semana)
    ON DELETE SET NULL;