--Buat database
CREATE DATABASE bootcamp_sql

'''
Note =
1.buat table berikut sesuai urutannya agar tidak terjadi error
	=>category_cut,city,fruit,grade,packing,dan employees
2.setelah langkah ke 1 selesai baru kita bisa buat table fruit_data dan melakukan import csv
'''

--Buat table category_cut dam input data
CREATE TABLE category_cut (
  category_id int,
  category varchar(255),
  primary key (category_id)
);

INSERT INTO category_cut (category_id, category)
VALUES
  (1,'Whole'),
  (2,'Slice'),
  (3,'Dice'),
  (4,'Chunk');

--Buat table city dan input data
CREATE TABLE city (
  city_id int,
  city varchar(255),
  primary key (city_id)
);

INSERT INTO city (city_id, city)
VALUES
  (1,'Jakarta'),
  (2,'Yogyakarta'),
  (3,'Bandung'),
  (4,'Makassar'),
  (5,'Palembang'),
  (6,'Surabaya'),
  (7,'Depok'),
  (8,'Tangerang'),
  (9,'Bekasi'),
  (10,'Pekanbaru'),
  (11,'Pontianak'),
  (12,'Samarinda'),
  (13,'Medan'),
  (14,'Bali'),
  (15,'Semarang'),
  (16,'Padang'),
  (17,'Batam'),
  (18,'Malang');

--Buat table fruit dan input data
CREATE TABLE fruit (
  fruit_id int,
  fruit_name varchar(255),
  primary key (fruit_id)
);

INSERT INTO fruit (fruit_id, fruit_name)
VALUES
  (1,'Apple'),
  (2,'Banana'),
  (3,'Orange'),
  (4,'Mango'),
  (5,'Pineapple'),
  (6,'Watermelon'),
  (7,'Grapes'),
  (8,'Strawberry'),
  (9,'Cherry'),
  (10,'Pear'),
  (11,'Plum'),
  (12,'Kiwi'),
  (13,'Papaya'),
  (14,'Avocado'),
  (15,'Lemon'),
  (16,'Lime'),
  (17,'Raspberry'),
  (18,'Blueberry'),
  (19,'Peach'),
  (20,'Apricot'),
  (21,'Fig'),
  (22,'Guava'),
  (23,'Blackberry'),
  (24,'Melon'),
  (25,'Lychee'),
  (26,'Dragonfruit'),
  (27,'Jackfruit');

--Buat table grade dan input data
CREATE TABLE grade (
  grade_id int,
  grade varchar(255),
  primary key (grade_id)
);

INSERT INTO grade (grade_id, grade)
VALUES
  (1,'A'),
  (2,'B'),
  (3,'C');

--Buat table packing dan input data
CREATE TABLE packing (
  packing_id int,
  packing_type varchar(255),
  primary key (packing_id)
);

INSERT INTO packing (packing_id, packing_type)
VALUES
  (1,'Carton Box'),
  (2,'Plastic Packaging'),
  (3,'Netting'),
  (4,'Plastic Tray'),
  (5,'Canned Packaging'),
  (6,'Basket');

--Buat table fruit data dan input data memalui import csv
CREATE TABLE fruit_data (
    no_order int,
    order_id bigint,
    fruit_id int,
    category_id int,
    grade_id int,
    packing_id int,
    city_id int,
    sku_name varchar,
    fruit_name varchar,
    category_name varchar,
    grade varchar,
    packing_name varchar,
    order_date date,
    time_order time,
    qty bigint,
    price bigint,
    primary key (order_id),
    -- Foreign key referencing the fruit table
    CONSTRAINT fk_fruit
	FOREIGN KEY (fruit_id)
	REFERENCES fruit(fruit_id),

    -- Foreign key referencing the category cut table
    CONSTRAINT fk_category
	FOREIGN KEY (category_id)
	REFERENCES category_cut(category_id),

    -- Foreign key referencing the grade table
    CONSTRAINT fk_grade
	FOREIGN KEY (grade_id)
	REFERENCES grade(grade_id),

    -- Foreign key referencing the packing table
    CONSTRAINT fk_packing
	FOREIGN KEY (packing_id)
	REFERENCES packing(packing_id),

    -- Foreign key referencing the city table
    CONSTRAINT fk_city
	FOREIGN KEY (city_id)
	REFERENCES city(city_id)
);


--karena data csv format  ISO DMY kita ubah menjadi ISO MDY pada database
ALTER DATABASE bootcamp_sql set datestyle TO 'ISO, MDY';
--cek datestyle bawaan database ini sekarang
show datestyle;data

--tampilkan data
select * from fruit_data

-- Operator --

--Ambil penjualan buah yang terjual lebih dari 20pcs
SELECT * FROM fruit_data
WHERE qty>20

--Ambil data penjualan buah yang mana terjual sebelum 2021
SELECT * FROM fruit_data
WHERE order_date < '2021-01-01'

--Ambil data penjualan yang harga buahnya dibawah 18000 atau sama dengan 18000
SELECT * FROM fruit_data
WHERE price<=18000

--Perlihatkan data total penjualan pada tahun diatas 2023
SELECT *, qty*price as total_penjualan FROM fruit_data
WHERE order_date >= '2023-01-01'

--Ambil data penjualan buah "Apple" dan memiliki grade "A" dengan tahun 2021 hingga 2022
SELECT * FROM fruit_data
WHERE fruit_name = 'Apple' AND grade = 'A' AND order_date >= '2021-01-01' AND order_date <= '2022-01-01'

--Ambil data penjualan buah "Apple" dan memiliki grade "A" atau diatas tahun 2021 
SELECT * FROM fruit_data
WHERE fruit_name = 'Apple' AND (grade = 'A' OR order_date > '2021-01-01')

--Ambil semua data kecuali data buah "Apple"
SELECT * FROM fruit_data
WHERE NOT fruit_name ='Apple'

SELECT * FROM fruit_data
WHERE fruit_name !='Apple'

--Ambil data buah "Apple"/"Mango"/"Banana"
SELECT * FROM fruit_data
WHERE fruit_name IN ('Apple','Mango','Banana')

--Ambil data selain "Apple"/"Mango"/"Banana" diatas tahun 2022
SELECT * FROM fruit_data
WHERE fruit_name NOT IN ('Apple','Mango','Banana') AND order_date >='2022-01-01'

--Ambil data harga dari 20000  sampai 25000
SELECT * FROM fruit_data
WHERE price BETWEEN 20000 AND 25000

--Ambil data buah dari kisaran harga "20000" hingga "25000" dam waktu pemesanannya dari jam "12 - 18"
SELECT * FROM fruit_data
WHERE price BETWEEN 20000 AND 25000 AND time_order BETWEEN '12:00:00' AND '18:00:00'

--Perlihatkan data karyawan dengan awalan "Da" dan akhiran "a" [LIKE]
SELECT * FROM employees
WHERE first_name LIKE 'Da%' AND last_name LIKE '%a'

--Perlihatkan data karyawan dengan awalan "D" dan akhiran "a" [ILIKE]
SELECT * FROM employees
WHERE first_name ILIKE 'D%' AND last_name ILIKE '%a'

--Tampilkan nama karyawan sesuai huruf abjad
SELECT * FROM employees
ORDER BY first_name 
