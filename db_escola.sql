create database db_escola;

use db_escola;

create table tb_estudantes (
id bigint auto_increment,
nome varchar(255),
turma varchar(20),
data_matricula date,
nota decimal(10,2),
status_matricula ENUM('Ativo', 'Inativo') NOT NULL,
primary key(id)
);


insert into tb_estudantes (nome, turma, data_matricula, nota, status_matricula)
values
("Lucas Matheus", "9 ANO - A", '2019-01-01', 9.8, 'Ativo'),
("Leticia Pereira", "8º ANO - B", '2020-01-01', 7.5, 'Ativo'),
("João Fernandes", "8º ANO - B", '2021-02-01', 6.3, 'Ativo'),
("Lucas Pereira", "9º ANO - B", '2024-03-03', 10.0, 'Ativo'),
("Sofia Costa", "3º ANO - A", '2023-02-01', 7.8, 'Ativo'),
("Gabriel Silva", "1º ANO - A", '2018-01-01', 3.8, 'Ativo'),
("Mariana Oliveira", "7º ANO - A", '2019-02-01', 5.7, 'Ativo'),
("Felipe Souza", "7º ANO - B", '2020-02-10', 6.0, 'Ativo'),
("Isabela Rocha", "7º ANO - B", '2009-01-01', 8.8, 'Ativo');

select * from tb_estudantes where nota > 7.0;

select * from tb_estudantes where nota < 7.0;

update tb_estudantes set turma = "9º ANO - A" where id = 1;

update tb_estudantes set status_matricula = 'Inativo' where id = 9;