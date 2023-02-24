CREATE TABLE Estudantes(
 	student_id INT PRIMARY KEY, -- Chave primaria de identificação
  	Nome VARCHAR(50) NOT NULL,
  	Sobrenome VARCHAR(50) NOT NULL,
  	Endereço(200) NOT NULL,
  	email(100) UNIQUE NOT NULL,
  	senha VARCHAR(50) NOT NULL,  
);

create table Cursos(
	Curso_id VARCHAR(20) PRIMARY KEY,
 	Curso_nome VARCHAR(50) not NULL,
  	Credito_aula INT NOT NULL,
  	Credito_Trabalho INT NOT NULL,
  	Docente VARCHAR(50) NOT NULL,
  	Instituto VARCHAR(50) NOT NULL,
  );
  
  
  CREATE TABLE MatriculaCurso(
  	Matricula_id INT PRIMARY KEY,
    Estudante_id INT NOT NULL,
    Curso_id INT NOT NULL,
    Data_Matricula DATE NOT NULL,
    foreign key (Estudante_id) REFERENCES  Estudante(Estudante_id),
    FOREIGN KEY (Curso_id) REFERENCES Curso(Curso_id),
    );
  
INSERT INTO Estudante(Estudante_id, Nome, Sobrenome, Endereço, Email, Senha) VALUES (11315590, 'Patrícia', 'da Silva Rodrigues','patriciiarodrigs@gmail.com', '12345678910');

Insert into Curso(Curso_id, Nome, Credito_aula, Credito_trabalho, Docente, Instituto);
 Values ('MAC121', 'Algoritmos e Estruturas de dados II', 4, 2, 'Carlos Ferreira', 'Instituto de Matemática e Estatísticas');
 
 INSERT INTO MatriculaCurso(Matricula_id, Estudante_id, Curso_id, Data_Matricula) VALUES (24, 11315590, 'MAC121', '2020-06-02');