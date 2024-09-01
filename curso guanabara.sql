create database cadastro;
use cadastro;
create table pessaos(
id int not null auto_increment,
nome varchar(30) not null,
 nascimento date,
 sexo enum("m" , "f"),
 peso decimal(5,2),
 altura decimal(3,2),
 nacionalidade varchar(20) default "brasil",
 primary key (id)
 ) default charset = utf8;
 rename table pessaos to pessoas;
 use cadastro;
 INSERT INTO pessoas
 (nome, nascimento , sexo, peso, altura, nacionalidade)
 values
 ('Guilherme', '2005-04-14', 'M', '60.0', '1.67', 'BRASIL');
 select * from pessoas;
 use cadastro;
 insert into pessoas values
 ('default','Joao', '2003-07-17', 'M', '75.7', '1.80', 'suécia');
 alter table pessoas add column profissao varchar (30);
 desc pessoas;
 alter table pessoas drop column profissao;
 alter table pessoas add column profissao varchar (10) after nome; 
 alter table pessoas add column codigo int first;
 alter table pessoas modify column profissao varchar (20) not null default " "; 
 alter table pessoas change column profissao prof varchar (20) not null default " ";
 create table if not exists cursos(
 nome varchar (30) not null unique,
 descricao text,
 carga int unsigned,
 totaulas int unsigned,
 ano year default '2024'
 ) default charset = utf8;