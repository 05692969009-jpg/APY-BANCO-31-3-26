CREATE DATABASE database;
USE database;
SHOW DATABASES;

CREATE TABLE piloto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    patente VARCHAR(50) 
);

CREATE TABLE aeronave (
    id INT PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR(255) NOT NULL,
    fabricante VARCHAR(255) NOT NULL,
    ano_fabricacao INT NOT NULL,
    nome VARCHAR(100),
    piloto_id INT,
    FOREIGN KEY (piloto_id) REFERENCES piloto(id)
);

CREATE TABLE planeta (
    id INT PRIMARY KEY AUTO_INCREMENT,
    galaxia VARCHAR(255) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
);
