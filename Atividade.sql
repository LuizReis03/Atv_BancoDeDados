CREATE DATABASE Db_reis1

use Db_reis1

--drop table gera
--drop table pedido
--drop table nota

CREATE TABLE pedido (
    id_ped int PRIMARY KEY,
    data_ped date,
    qtde_ped int,
    valor_ped numeric (12,2)
);

CREATE TABLE nota (
    id_nota int,
    data_nota date,
    qtde_nota int,
    valor_nota numeric (12,2)
);

CREATE TABLE gera (
    id int primary key,
    fk_pedido_id_ped int,
    fk_nota_id_nota int
);

select * from pedido 
insert into pedido values (1, '20210523', 10, 589.00)
insert into pedido values (2, '20210524', 7, 370.00)
insert into pedido values (3, '20210525', 23, 1210.00)

select * from nota
insert into nota values (2, '20210524', 7, 370.00)
insert into nota values (1, '20210523', 10, 589.00)
insert into nota values (3, '20210525', 23, 1210.00)

select * from gera
insert into gera values (1, 1, 1)
insert into gera values (2, 2, 2)
insert into gera values (3, 3, 3)
 
 select * from pedido ped 
 inner join gera ger 
 on ped.id_ped = ger.fk_pedido_id_ped
 inner join nota nota
 on nota.id_nota = ger.fk_nota_id_nota
