# Задание 2
# Создать базу данных с именем “MyDB”.

# Задание 3
# В созданной базе данных (из задания 2) создать 3 таблицы:
# 1-я содержит имена и номера телефонов сотрудников некой компании,
# 2-я содержит ведомости об их зарплате, и должностях,
# 3-я содержит информацию о семейном положении, дате рождения и месте проживания.

CREATE DATABASE MyDB;

USE MyDB;

CREATE TABLE Employees
(
    ID_EMPLOYEE INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    FirstName   VARCHAR(30)        NOT NULL,
    LastName    VARCHAR(30)        NOT NULL,
    Phone       VARCHAR(13)        NOT NULL
);

CREATE TABLE Positions
(
    ID_POSITION  INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    NamePosition VARCHAR(30)        NOT NULL,
    Salary       DOUBLE             NOT NULL,
    ID_EMPLOYEE  INT                NOT NULL
);

CREATE TABLE EmployeeDetails
(
    ID_DETAILS       INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Status           VARCHAR(10)        NOT NULL,
    Birthday         DATE               NOT NULL,
    PlaceOfResidence VARCHAR(30)        NOT NULL
);

