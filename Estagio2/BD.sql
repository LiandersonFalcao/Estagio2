CREATE TABLE tb_instrutor (
  IdInstrutor INTEGER NOT NULL IDENTITY,
  NomeInstrutor VARCHAR(45) NOT NULL,
  EmailInstrutor VARCHAR(45) NOT NULL,
  Usuario VARCHAR(45) NOT NULL,
  Senha VARCHAR(45) NOT NULL,
  PRIMARY KEY(IdInstrutor)
);

CREATE TABLE tb_aluno (
  IdAluno INTEGER NOT NULL IDENTITY,
  NomeAluno VARCHAR(45) NOT NULL,
  EmailAluno VARCHAR(45) NOT NULL,
  PRIMARY KEY(IdAluno)
);

CREATE TABLE tb_curso (
  IdCurso INTEGER NOT NULL IDENTITY,
  IdInstrutor INTEGER NOT NULL,
  NomeCurso VARCHAR(45) NOT NULL,
  DataInicial DATE NOT NULL,
  DataFinal DATE NOT NULL,
  CargaHoraria INTEGER NOT NULL,
  DescricaoCurso VARCHAR(400) NULL,
  PRIMARY KEY(IdCurso),
  FOREIGN KEY(IdInstrutor)
    REFERENCES tb_instrutor(IdInstrutor)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE tb_aluno_curso (
  IdAluno INTEGER NOT NULL,
  IdCurso INTEGER NOT NULL,
  PRIMARY KEY(IdAluno, IdCurso),
  FOREIGN KEY(IdAluno)
    REFERENCES tb_aluno(IdAluno)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(IdCurso)
    REFERENCES tb_curso(IdCurso)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE tb_aluno_instrutor (
  IdAluno INTEGER NOT NULL,
  IdInstrutor INTEGER NOT NULL,
  PRIMARY KEY(IdAluno, IdInstrutor),
  FOREIGN KEY(IdAluno)
    REFERENCES tb_aluno(IdAluno)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(IdInstrutor)
    REFERENCES tb_instrutor(IdInstrutor)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);