CREATE DATABASE HealthCare;
USE HealthCare;

CREATE TABLE departamentos (
    id_departamento INT PRIMARY KEY,
    nome_departamento VARCHAR(100)
);

CREATE TABLE medicos (
    id_medico INT PRIMARY KEY,
    nome_medico VARCHAR(100),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento)
);

INSERT INTO departamentos (id_departamento, nome_departamento) VALUES 
(1, 'Cardiologia'), 
(2, 'Neurologia'), 
(3, 'Ortopedia');

INSERT INTO medicos (id_medico, nome_medico, id_departamento) VALUES 
(1, 'Dr. Carlos Mendes', 1), 
(2, 'Dra. Julia Amaral', 2), 
(3, 'Dr. Paulo Castro', NULL), 
(4, 'Dra. Marta Souza', 3);

SELECT 
    medicos.nome_medico, 
    departamentos.nome_departamento
FROM 
    medicos
LEFT JOIN 
    departamentos ON medicos.id_departamento = departamentos.id_departamento;
