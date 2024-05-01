/*Considere o seguinte cenário: Uma universidade deseja armazenar informações 
sobre seus cursos, alunos e professores. Modele um banco de dados relacional que 
atenda a esses requisitos. O banco de dados deve conter as seguintes tabelas:

Cursos: Deve conter informações sobre os cursos oferecidos, incluindo código 
ùdo curso, nome do curso e carga horária.
Alunos: Deve conter informações sobre os alunos matriculados, incluindo número 
de identificação do aluno, nome e e-mail.
Professores: Deve conter informações sobre os professores que ministram os 
cursos, incluindo número de identificação do professor, nome e departamento.
Implemente o modelo de banco de dados relacional utilizando SQL. Não se esqueça 
de definir as chaves primárias e quaisquer chaves estrangeiras necessárias.*/

USE universidadeDB;

CREATE TABLE IF NOT EXISTS cursostable (
idCursos INT AUTO_INCREMENT NOT NULL, -- codigo curso
nomeCurso VARCHAR (200) NOT NULL, 
cargaHoraria INT NOT NULL, 
profFK INT UNSIGNED, 
CONSTRAINT professores_fk FOREIGN KEY (profFK) REFERENCES professorestables (idProfessores) ON DELETE CASCADE ON UPDATE CASCADE,

primary key (idCursos)
);

CREATE TABLE IF NOT EXISTS alunostable (
idAlunos INT AUTO_INCREMENT NOT NULL, -- codigo aluno identificacao 
nome VARCHAR (200) NOT NULL, 
email VARCHAR (200) NOT NULL, 

primary key(idAlunos)
);

CREATE TABLE IF NOT EXISTS alunos_cursos (
    idAlunos_cursos INT AUTO_INCREMENT, -- Alterado para definir diretamente como chave primária e adicionar AUTO_INCREMENT
    alunosFK INT UNSIGNED,
    cursosFK INT UNSIGNED,
    CONSTRAINT alunos_fk FOREIGN KEY (alunosFK) REFERENCES alunostable(idAlunos) ON UPDATE CASCADE ON DELETE CASCADE, -- Corrigido para ON UPDATE CASCADE e ON DELETE CASCADE para manter a consistência dos dados
    CONSTRAINT cursos_fk FOREIGN KEY (cursosFK) REFERENCES cursostable(idCursos) ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY(idAlunos_cursos)

);

CREATE TABLE IF NOT EXISTS professorestable(
idProfessores INT auto_increment NOT NULL, 
nome VARCHAR (200) NOT NULL, 
departamento VARCHAR(200) NOT NULL, 

primary key (idProfessores)
);