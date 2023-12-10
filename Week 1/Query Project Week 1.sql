--Buat database
CREATE DATABASE employee_db

--Buat table pegawai
CREATE TABLE pegawai(
	id int primary key,
	nama varchar,
	nama_panggilan varchar,
	usia int,
	salary int
);

--Tampilkan table pegawai
select * from pegawai

--Tambah colum baru "alamat" pada tabel pegawai
ALTER TABLE pegawai
ADD alamat varchar

--Hapus colum "nama panggilan" pada tabel pegawai
ALTER TABLE pegawai
DROP nama_panggilan

--Ubah type data colum "salary" pada tabel pegawai
ALTER TABLE pegawai
ALTER COLUMN salary TYPE bigint

--Input data pada tabel pegawai
INSERT INTO pegawai (id,nama,usia,salary,alamat)
VALUES (1,'Ramzan',30,5000000,'Jl. ABC No. 123'),
(2,'Boodey',35,6000000,'Jl. CDE No. 123')

--Update data "salary" pada tabel pegawai
UPDATE pegawai
set salary =7000000
where nama ='Ramzan'

--Hapus tabel pegawai
DROP TABLE pegawai

--Hapus database 
DROP DATABASE employee_db WITH (FORCE)