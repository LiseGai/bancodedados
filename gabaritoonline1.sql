USE bibliotecaDB;

/*Você foi contratado para criar um banco de dados para uma biblioteca. A biblioteca possui várias obras (livros) e muitos usuários que podem tomar emprestados esses livros. Cada livro possui um título, um autor e um número de exemplares disponíveis. Cada usuário tem um nome, um endereço de e-mail único e um número de telefone. Os usuários podem emprestar vários livros e cada livro pode ser emprestado por vários usuários.

Projete o esquema do banco de dados para esse cenário e crie as tabelas necessárias para armazenar as informações sobre livros e usuários, bem como a relação entre eles (empréstimos).*/

CREATE TABLE Livros (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    exemplares_disponiveis INT NOT NULL
);

CREATE TABLE Usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

CREATE TABLE Emprestimos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_livro INT,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id),
    FOREIGN KEY (id_livro) REFERENCES Livros(id)
);