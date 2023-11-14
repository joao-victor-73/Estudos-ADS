/**/

CREATE DATABASE projetos; /* Renomear o nome da base de dados depois! */

USE projetos;

CREATE TABLE empresa (
    idEmpresa INT PRIMARY KEY,
    cnpj CHAR(11) NOT NULL,
    nomeEmpresa VARCHAR(30) NOT NULL,
    nSalas INT,
    enderecoEmpresa VARCHAR(30) NOT NULL
)

CREATE TABLE salas (
    idSala INT PRIMARY KEY,
    N_andar INT,
    nomeSala VARCHAR(30) NOT NULL,
    statuSala BOOLEAN /* Vai funcionar assim: TRUE será para a sala ocupada, FALSE para a sala disponível */,
    enderecoSala VARCHAR(30) NOT NULL,
    fk_idUser INT
)

CREATE TABLE usuarios (
    idUser INT PRIMARY KEY,
    nomeUser VARCHAR(50) NOT NULL,
    cargo VARCHAR (20),
    telefone CHAR(11) NOT NULL /*Ex: 25.9.8745-8552 // precisa ser NOT NULL porque precisa de um número para ligar*/,
    fk_idEmpresa INT
)