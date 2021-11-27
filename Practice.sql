-- Используя MySQL Workbench создать пустую базу данных автомобилей. Заполнить таблицу данными
-- (id(Autoincrement), марка, модель, объем двигателя, цена, макс. скорость).

CREATE DATABASE cars;

USE cars;

CREATE TABLE cars_info
(
id INT AUTO_INCREMENT NOT NULL,
mark VARCHAR(30) NOT NULL,
model VARCHAR(30) NOT NULL,
engine FLOAT NOT NULL,
price INT NOT NULL,
speed INT NOT NULL,
PRIMARY KEY (id)
)
;

INSERT INTO cars.cars_info (mark, model, engine, price, speed)
VALUES ('BMW', '325', 2.5, 15000, 230);

INSERT INTO cars.cars_info (mark, model, engine, price, speed)
VALUES ('BMW', 'X5', 3.5, 55000, 290);

INSERT INTO cars.cars_info (mark, model, engine, price, speed)
VALUES ('OPEL', 'ASTRA', 1.4, 5000, 180);

INSERT INTO cars.cars_info (mark, model, engine, price, speed)
VALUES ('OPEL', 'ASTRA', 1.6, 5300, 200);

INSERT INTO cars.cars_info (mark, model, engine, price, speed)
VALUES ('AUDI', 'A6', 3.0, 25000, 250);

INSERT INTO cars.cars_info (mark, model, engine, price, speed)
VALUES ('MERCEDES', 'BENZ', 3.5, 45000, 280);

INSERT INTO cars.cars_info (mark, model, engine, price, speed)
VALUES ('MERCEDES', 'GL350', 4.0, 75000, 320);

INSERT INTO cars.cars_info (mark, model, engine, price, speed)
VALUES ('CHEVROLET', 'AVEO', 1.5, 4500, 170);

-- 1) вывести все машины
SELECT * FROM cars_info;

-- 2) вывести марку, модель и максимальную скорость машин
SELECT mark, model, speed FROM cars.cars_info;

-- 3) вывести все машины марка которых Audi 
SELECT * FROM cars_info WHERE mark = 'AUDI';

-- 4) вывести все машины марка которых Audi или BMW
SELECT * FROM cars_info WHERE mark IN ('AUDI', 'BMW');

-- 5) вывести все машины макс. скрость которых от 200 до 300
SELECT * FROM cars_info WHERE speed BETWEEN 200 AND 300;

-- 6) вывести все машины марка которых Audi и обьем двигателя больше 1.5 л
SELECT * FROM cars_info WHERE mark = 'AUDI' AND engine > 1.5;

-- 7) вывести все машины марка которых начинается на 'h'
SELECT * FROM cars_info WHERE mark LIKE 'h%';

-- 8) вывести все машины цена которых 200_000, 255_000 или 300_000
SELECT * FROM cars_info WHERE price IN (200000, 255000, 300000);

-- 9) упорядочить все машины по их маркам
SELECT * FROM cars_info ORDER BY mark;

-- 10) упорядочить все машины по их цене
SELECT * FROM cars_info ORDER BY price;

-- 11) упорядочить все машины по их объему двигателя и цене
SELECT * FROM cars_info ORDER BY engine, price;

-- 12) отсортировать все машины по макс. скорости в порядке убывания
SELECT * FROM cars_info ORDER BY speed DESC;

-- 13) вывести общую стоимость всех машин Audi
SELECT SUM(price) FROM cars_info WHERE mark = 'AUDI';

-- 14) вывести общее количество всех машин BMW у которых модель A6
SELECT COUNT(*) FROM cars_info WHERE mark = 'BMW' AND model = 'A6';

-- 15) вывести общее количество всех машин Audi у которых цена больше 200_000 и макс. скорость < 200
SELECT COUNT(*) FROM cars_info WHERE mark = 'AUDI' AND price > 200000 AND speed < 200;

-- 16) вывести среднюю скорость всех машин Honda
SELECT AVG(speed) FROM cars_info WHERE mark = 'Honda';

-- 17) задать новую скорость 500 всем машинам Audi
UPDATE cars_info SET speed = 500 WHERE mark = 'AUDI';

-- 18) удалить все машины с ценой 200_000
DELETE FROM cars_info WHERE price = 200000;