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
use cadastro;
 alter table cursos add column idcurso int first;
 alter table cursos add primary key (idcurso);
 insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
 ('2','Algoritimos','Logica de Programação','20','8','2014'),
 ('3','Photoshop','Aulas de Photoshop CC','9','20','2014'),
 ('4','PGP','PHP para Iniciantes','33','40','2010'),
 ('5','Jarva','Intro ao Java','22','10','2000'),
 ('6','MySQL','Curso MySQL','21','15','2016'),
 ('7','World','Word Completo','40','30','2018'),
 ('8','Sapateado','Dança Rítimica','14','30','2018'),
 ('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
 ('10','YouTuber','Gerar Polêmicas e Ganhar Inscritos','5','2','2010');
 update cursos 
 set nome = 'java', carga ='40', ano = '2015'
 where idcurso = '5'
 limit 1;
 delete from cursos 
 where idcurso = '10';
select * from cursos;
 
