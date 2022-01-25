create database Posts;

create table post(id serial, nombre_de_usuario varchar(25), fecha_de_creacion time, contenido varchar(250), descripcion varchar(100), primary key (id));

-- Post Pamela

insert into post (nombre_de_usuario, fecha_de_creacion, contenido, descripcion) values ('Pamela', NOW(), 'Hola a todos! este es mi primer post jaja', 'Primer post');

insert into post (nombre_de_usuario, fecha_de_creacion, contenido, descripcion) values ('Pamela', NOW(), 'Hola a todos! este es mi segundo post jeje', 'Segundo post');

-- Post Carlos

insert into post (nombre_de_usuario, fecha_de_creacion, contenido, descripcion) values ('Carlos', NOW(), 'Hola mundo! Soy carlos, como estan?', 'Primer post de Carlos');
-- Agregar columna titulo a tabla post

alter table post add titulo varchar(50); 
-- Update de titulos

update post set titulo = 'Titulio de mi primer post!' where id = 1;
update post set titulo = 'Titulo de mi segundo post!' where id = 2;
update post set titulo = 'Para qué sirve esto del titulo?' where id = 3;

-- Post de Pedro

insert into post (nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) values ('Pedro', NOW(), 'Recien me enteré de esta red social, qué tal?', 'Primera vez en esta red social', 'Pedro es el mejor');

-- Se borra el post de carlos 
delete from post where id = 3;

insert into post (nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) values ('Carlos', NOW(), 'Ups! Sin querer borré mis post anterior, aun no entiendo como funciona esto :(', ' Cometí un error!!', 'Ups!');

create table comentarios(id int, fecha_de_creacion_comentario time, contenido varchar(250), FOREIGN KEY (id) references post(id));

-- Comentarios a pamela
 insert into comentarios (id, fecha_de_creacion_comentario, contenido) values (1,NOW() ,'Hola pamela! Soy carlos, como estas?');
 insert into comentarios (id, fecha_de_creacion_comentario, contenido) values (1,NOW() ,'Hola pamela? Soy carlos denuevo, por qué no me respondes????');

-- Comentarios a carlos
 insert into comentarios (id, fecha_de_creacion_comentario, contenido) values (5,NOW() ,'Hola carlos! perdon no ');
 insert into comentarios (id, fecha_de_creacion_comentario, contenido) values (5,NOW() ,'vi');
 insert into comentarios (id, fecha_de_creacion_comentario, contenido) values (5,NOW() ,'tu');
 insert into comentarios (id, fecha_de_creacion_comentario, contenido) values (5,NOW() ,'comentario! no sé qué pasó que se empezaron a mandar comentarios solos!');

-- Post de margarita

insert into post (nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) values ('Margarita', NOW(), 'Hola! soy Margarita, quien está por aqui?', 'Titulo?', 'Primer post de margarita');

-- Comentarios a Margarita

insert into comentarios (id, fecha_de_creacion_comentario, contenido) values (6,NOW() ,'Hola Margarita! soy Carlos!');
insert into comentarios (id, fecha_de_creacion_comentario, contenido) values (6,NOW() ,'Hola Margarita! soy Pedro');
insert into comentarios (id, fecha_de_creacion_comentario, contenido) values (6,NOW() ,'Hola Margarita! soy Pamela!');
insert into comentarios (id, fecha_de_creacion_comentario, contenido) values (6,NOW() ,':)');
insert into comentarios (id, fecha_de_creacion_comentario, contenido) values (6,NOW() ,':S');
insert into comentarios (id, fecha_de_creacion_comentario, contenido) values (6,NOW() ,':$');