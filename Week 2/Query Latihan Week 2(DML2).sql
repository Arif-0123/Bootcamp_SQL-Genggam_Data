--tampilkan  pegawai dengan nama depan berabjad "be" dengan salary 2022  
SELECT * FROM employees
where first_name ILIKE 'be%'
ORDER BY salary_2022 DESC

--tampilkan 10 pegawai sesuai urut
SELECT * FROM employees
ORDER BY employee_id 
LIMIT 10;

--tampilkan 10 pegawai secara acak akan tetapi urut no id pegawai
SELECT * FROM employees
tablesample system (5)  limit 10

--tampilkan 10 pegawai secara acak akan tetapi tidak urut no id pegawai
SELECT * FROM employees
tablesample bernoulli (5)  limit 10

--tampilkan 10 pegawai secara acak akan tetapi urut no id pegawai dengan limit waktu kurang dari 0.1
SELECT * FROM employees
tablesample system (5)
where random()<0.1
limit 10

--tampilkan departement pegawai
SELECT DISTINCT(department) FROM employees

--tampilkan jumlah departement pegawai
SELECT COUNT(DISTINCT department) AS "Jumlah Departement" FROM employees

--tampilkan nama depan pegawai tanpa duplikasi dan hitung berapa duplikasnya
SELECT first_name, Count(first_name) as duplikat from employees
GROUP BY first_name
having Count(first_name)>1
order by duplikat

--karena tipe data salary 2023 adalah integer maka kita ubah jadi desimal dengan fungsi cast
--fungsi cast untuk ubah data secara sementara tanpa ubah struktur tipe datanya dari table
select *, ROUND(CAST(salary_2023 as decimal)/13,2) as round_contoh from employees

--ambil 3 huruf diawal nama depan pegawai
select substring ('This is test data',1,7)
'''
SELECT SUBSTRING(column_name, start, length)
'''
select first_name, substring(first_name,1,3) FROM employees

--ganti nama departement Human Resources menjadi HR
select department, replace(department, 'Human Resources','HR') as new_departement from employees

'''
SELECT REPLACE(column_name, old_string, new_string)
'''

--tampilkan letak posisi @ pada email pegawai
select email,position('@' IN email) from employees

--tampilkan nama alamat sesudah @ pada email pegawai
select email,substring(email, position('@' IN email)+1) from employees

--isi data email yang kosong/null dengan teks 'NONE'
select email,coalesce(email, 'NONE') AS new_email from employees

--
select first_name, lower(first_name) low from employees

--
select first_name, upper(first_name) up from employees

--tampilkan nama fullname pegawai
select first_name ||' '||last_name fullname from employees

--tampilkan jumlah huruf nama depan pegawai
select first_name,length(first_name) Jumlah from employees

--hapus spasi
select trim(leading from '  Bootcamp SQL')

--
select department, sum(salary_2023) as total_cost from employees
group by department

select department, store_city_id, sum(salary_2023) as total_cost from employees
group by department,store_city_id
order by store_city_id

--
select department, sum(salary_2023) as total_cost from employees
group by department
having SUM(salary_2023) >200000