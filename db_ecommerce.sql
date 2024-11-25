create database db_ecommerce;

use db_ecommerce;

create table tb_produtos (
id bigint auto_increment,
produto varchar(255),
categoria varchar(255),
marca varchar(255),
preco decimal(10,2),
estoque boolean,
primary key(id)
)

insert into tb_produtos (produto, categoria, marca, preco, estoque)
values
("S24 Ultra", "Smartphone", "Samsung", 6499.99, true),
("S24 Plus", "Smartphone", "Samsung", 4499.99, true),
("S24 FE", "Smartphone", "Samsung", 3499.99, true),
("Placa de vídeo Nvidea RTX 4060", "Hardware", "Galax", 1999.99, true),
("SSD NVME 480 Gb", "Hardware", "Kingston", 399.99, true),
("Placa Mãe AMD 4 B450M", "Hardware", "Gigabyte", 499.99, true),
("Memória RAM DDR5 16Gb", "Hardware", "HyperX", 599.99, true),
("Memória RAM DDR3 8Gb", "Hardware", "Corsair", 99.99, false),
("S23 Ultra", "Smartphone", "Samsung", 4499.99, true);

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set estoque = true where id = 8;
