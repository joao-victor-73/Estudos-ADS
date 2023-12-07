/*7
Um usuário entrará em contato com uma empresa para fazer uma reunião

Uma empresa que tem como foco um local com várias salas com diversos recursos
audiovisuais, e afins, com objetivo de alocar esses locais para outras empresas
fazerem suas reuniões adequadas e bem organizadas.

--> A tabela EMPRESA servirá como um cadastro das empresas, onde será registrado:
        - Seu CNPJ, seu nome, número de salas que deseja reservar e o endereço da empresa;

--> A tabela SALAS servirá para a nossa empresa manter um controle das salas que estão ocupadas, 
tendo como FOREIGN KEY o id da empresa que alugou a sala. Aquelas salas desocupadas, tera um FK
nulo, ou vazio. 

--> A tabela USUARIOS contará com um cadastro das pessoas que usará aquelas salas reservadas anterioremente. 
Esses usuários tem que fazer parte de alguma empresa. É como um cadastro para manter um controle da quantidade de pessoas
ou funcionários nas salas.

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
    totUsers INT,
    fk_idEmpresa INT
);

/* Quando uma sala estiver reservada, é necessário colocar no registro (INSERT INTO) o valor TRUE em statuSala. Para que
assim, quando for fazer o SELECT, possa colocar um filtro e facilitar demonstrar o relátorio com as salas já reservadas
e as que estão disponíveis.*/

CREATE TABLE usuarios (
    idUser INT PRIMARY KEY AUTO_INCREMENT,
    nomeUser VARCHAR(50) NOT NULL,
    cargo VARCHAR (20), 
    telefone CHAR(11) NOT NULL /*Ex: 25.9.8745-8552 // precisa ser NOT NULL porque precisa de um número para ligar*/,
    fk_idEmpresa INT
);

/* <Adicionando valores para a tabela empresa> */
INSERT INTO empresa VALUES 
    ('40.098.680/0001-42', 'Elda Associates', 3, 'Rua Domingos Olimpio, Centro'),
    ('38.366.104/0001-97', 'Scytech Corp', 2, 'Rua Barão de Vitório, Casa Grande'),
    ('76.198.675/0001-59', 'Cobeha Spa', 0, 'Rua Serra de Bragança'),
    ('83.417.539/0001-78', 'Shehecorp', 1, 'Travessa da CDL, Centro'),
    ('79.365.374/0001-60', 'Herosomic', 3, 'Rua Arlindo Nogueira, Centro'),
    ('42.481.636/0001-42', 'Blackhawk Hotel', 1, 'Rua Carlos Augusto Cornel, Bom Retiro'),
    ('22.785.368/0001-45', 'Bt Interiors', 1, 'Rua Paracatu, Parque Imperial'),
    ('24.653.867/0001-04', 'Lawn Expo', 1, 'Rua Cristiano Olsen, Jardim Sumaré'),
    ('64.417.412/0001-04', 'The Cat Club', 2, 'Avenida Esbertalina Barbosa, Guriri Norte'),
    ('68.365.970/0001-24', 'Mr Grove Farm', 0, 'Rua das Fiandeiras, Vila Olímpia'),
    ('87.961.437/0001-70', 'Busy Life', 3, 'QE 11 Área Especial C, Guará I'),
    ('12.746.694/0001-90', 'Jtvr', 2, 'Rua Frederico Moura, Cidade Nova'),
    ('43.246.316/0001-70', 'Firth Academy', 1, 'Rua das Fiandeiras, Vila Olímpia'),
    ('13.182.783/0001-13', 'Tr8 Properties', 1, 'Rua Carlos Augusto Cornel, Bom Retiro'),
    ('09.328.762/0001-96', 'Thrive Therapy', 3, 'Rua Arlindo Nogueira, Centro'),
    ('59.861.054/0001-94', 'Door on Doorr', 5, 'Rua Serra de Bragança'),
    ('45.127.054/0001-50', 'Bar do Nohe', 2, 'Rua Pereira Estéfano, Vila da Saúde'),
    ('92.371.728/0001-48', 'Guest House Motel', 1, 'Travessa da CDL, Centro'),
    ('72.832.702/0001-42', 'Golden Garage', 1, 'Rua da Imprensa, Monte Castelo'),
    ('94.826.718/0001-85', 'T & E Lava-Jato', 0, 'Rua Paracatu, Parque Imperial');

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