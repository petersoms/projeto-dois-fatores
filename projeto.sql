CREATE DATABASE empresa;

USE empresa;

create database testelogin;

use testelogin;

CREATE TABLE `users` (
  `id` int PRIMARY KEY,
  `nome` varchar(255),
  `email` varchar(255) UNIQUE NOT NULL,
  `senha` varchar(255)
);

CREATE TABLE `authtofac` (
  `id_user` int PRIMARY KEY UNIQUE,
  `cod` int,
  `created_at` datetime DEFAULT (now())
);

ALTER TABLE `authtofac` ADD FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

insert into `users`( `id`,`nome`,`email`,`senha`)values(
  1,"marcela","marcelinhaADB@gmail.com", "123pegueuv6s"
);
insert into `authtofac`(`id_user`,`cod`,`created_at`) values (
1,354,5
);

