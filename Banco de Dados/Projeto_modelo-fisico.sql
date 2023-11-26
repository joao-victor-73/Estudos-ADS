/*7
Um usuário entrará em contato com uma empresa para fazer uma reunião
*/

CREATE DATABASE sistema_reservas;

USE sistema_reservas;

CREATE TABLE empresa (
    idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    cnpj CHAR(11) NOT NULL,
    nomeEmpresa VARCHAR(30) NOT NULL,
    nSalas INT,
    enderecoEmpresa VARCHAR(30) NOT NULL
);

CREATE TABLE salas (
    idSala INT PRIMARY KEY AUTO_INCREMENT,
    N_andar INT,
    nomeSala VARCHAR(30) NOT NULL,
    statuSala BOOLEAN /* Vai funcionar assim: TRUE será para a sala ocupada, FALSE para a sala disponível */,
    enderecoSala VARCHAR(30) NOT NULL,
    fk_idUser INT
);

CREATE TABLE usuarios (
    idUser INT PRIMARY KEY AUTO_INCREMENT,
    nomeUser VARCHAR(50) NOT NULL,
    cargo VARCHAR (20), 
    telefone CHAR(11) NOT NULL /*Ex: 25.9.8745-8552 // precisa ser NOT NULL porque precisa de um número para ligar*/,
    fk_idEmpresa INT
);

/* <Adicionando valores para a tabela empresa> */
INSERT INTO empresa VALUES 
    ('40.098.680/0001-42',),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    ();

/* <Adicionando valores para a tabela salas > */
INSERT INTO salas VALUES 
    ('',),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    ();

/* <Adicionando valores para a tabela usuarios> */
INSERT INTO usuarios VALUES 
    ('',),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    ();