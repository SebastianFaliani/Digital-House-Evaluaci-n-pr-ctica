drop database if exists adminnotas;
create database adminnotas;
use adminnotas;

drop table if exists Users;
create table Users (
	id int not null auto_increment,
	name varchar(30) not null,
	email varchar(50) not null,
	primary key (id)
);

drop table if exists Categorys;
create table Categorys (
	id int not null auto_increment,
	name varchar(30) not null,
	primary key (id)
);

drop table if exists Notes;
create table Notes (
	id int not null auto_increment,
	title varchar(100) not null,
	createDate date not null,
	updateDate date null,
	noteDescrition int not null,
	deleteNote tinyint not null,
	idUser int not null,
	idCategory int not null,
	primary key (id),
	foreign key (idUser) references Users(id),
	foreign key (idCategory) references Categorys(id)
);

insert into Users values (default, 'user1', 'user1@meil.com'),(default, 'user2', 'user2@mail.com'),(default, 'user3','user3@mail.com'),(default, 'user4','user4@mail.com'),(default, 'user5','user5@mail.com'),(default, 'user6','user6@mail.com'),(default, 'user7','user7@mail.com'),(default, 'user8','user8@mail.com'),(default, 'user9','user9@mail.com'),(default, 'user10','user10@mail.com');

insert into Categorys values (default, 'Matematicas'), (default, 'Literatura'), (default, 'Historia'), (default, 'Geografia'), (default, 'Biologia'), (default, 'Ingles'), (default, 'Dibujo'), (default, 'Contabilidad'), (default, 'Quimica'), (default, 'Fisica');

insert into Notes values (default, 'Primer Examen', now(), null, 9, 1, 3, 5), (default, 'Segungo Examen', now(), null, 4, 1, 8, 5), (default, 'Primer Examen', now(), null, 7, 0, 5, 1), (default, 'Primer Examen', now(), null, 8, 1, 6, 3), (default, 'Primer Examen', now(), null, 7, 0, 8, 8), (default, 'Tercer Examen', now(), null, 9, 1, 4, 5), (default, 'Segundo Examen', now(), null, 6, 0, 6, 8), (default, 'Primer Examen', now(), null, 8, 1, 7, 10), (default, 'Primer Examen', now(), null, 9, 1, 10, 7), (default, 'Segundo Examen', now(), null, 9, 1, 4, 1);

