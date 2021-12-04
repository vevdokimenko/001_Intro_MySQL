# Задание
# Используя MySQL Workbench создать пустую базу данных автомобилей.
# Заполнить таблицу данными (id(Autoincrement), марка, модель, объем двигателя,
# цена, макс. скорость).

CREATE DATABASE CarsExtra;

USE CarsExtra;

CREATE TABLE Cars
(
    ID_CAR   INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Mark     VARCHAR(30)        NOT NULL,
    Model    VARCHAR(30)        NOT NULL,
    Engine   DOUBLE             NOT NULL,
    Price    INT                NOT NULL,
    MaxSpeed INT                NOT NULL
);

INSERT INTO Cars (Mark, Model, Engine, Price, MaxSpeed)
VALUES ('Audi', 'A6', 2.5, 50000, 320),
       ('BMW', '325', 2.0, 35000, 300),
       ('TOYOTA', 'Camry', 3.5, 40000, 310);