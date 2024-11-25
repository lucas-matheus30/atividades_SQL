create database db_rh
use db_rh

create table tb_colaboradores (
id int auto_increment,
nome varchar(255),
cargo varchar(255),
data_admissao date,
salario decimal(10,2),
status boolean,
primary key(id)
)

insert into tb_colaboradores (nome, cargo, data_admissao, salario, status)
values ("Lucas Matheus", "Desenvolvedor Sr.", '2020-02-10', 16000.00, true);
insert into tb_colaboradores (nome, cargo, data_admissao, salario, status)
values ("Vanessa Silva", "Desenvolvedora Jr.", '2022-04-20', 3000.00, true);
insert into tb_colaboradores (nome, cargo, data_admissao, salario, status)
values ("Pedro Oliveira", "Estagiário", '2023-02-01', 1400.00, true);
insert into tb_colaboradores (nome, cargo, data_admissao, salario, status)
values ("Bruna Simas", "Tech Lead", '2021-04-01', 20000.00, true);
insert into tb_colaboradores (nome, cargo, data_admissao, salario, status)
values ("Matheus Silva", "Gerente Comercial", '2023-08-11', 9000.00, true);

select * from tb_colaboradores;

select * from tb_colaboradores where salario > 2000;

select * from tb_colaboradores where salario < 2000;

update tb_colaboradores set salario = 18000.00 where id = 1;

select * from tb_colaboradores;