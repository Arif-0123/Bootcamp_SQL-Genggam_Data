CREATE DATABASE employee_db

-- 
CREATE TABLE pegawai(
	id int primary key,
	nama varchar,
	nama_panggilan varchar,
	usia int,
	salary int
)

select * from pegawai

--
ALTER TABLE pegawai
ADD alamat varchar

--
ALTER TABLE pegawai
DROP nama_panggilan

--
ALTER TABLE pegawai
ALTER COLUMN salary TYPE bigint

--
INSERT INTO pegawai (id,nama,usia,salary,alamat)
VALUES (1,'Ramzan',30,5000000,'Jl. ABC No. 123'),
(2,'Boodey',35,6000000,'Jl. CDE No. 123')

--
UPDATE pegawai
set salary =7000000
where nama ='Ramzan'

--
DROP TABLE pegawai

-- 
DROP DATABASE employee_db WITH (FORCE)