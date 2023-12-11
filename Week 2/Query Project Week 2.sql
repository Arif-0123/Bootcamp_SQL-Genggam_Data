--1. Mengambill data penjualan buah grade A yang terjual ditahun April - Mei 2023
SELECT * FROM fruit_data
WHERE grade = 'A' AND order_date BETWEEN '2023-04-01' AND '2023-05-31'
ORDER BY order_date;

SELECT * FROM fruit_data
WHERE grade = 'A'
AND EXTRACT(MONTH FROM order_date) IN (4,5) AND EXTRACT(YEAR FROM order_date)=2023

--2. Mengambil data penjualan buah yang hanya terjual di malam hari (18.00 - 23.59)
SELECT * FROM fruit_data
WHERE time_order BETWEEN '18:00:00' AND '24:00:00'
ORDER BY time_order;

--3. Mengambil data penjualan buah yang terjual di area Jawa dan yang memiliki grade A atau B
SELECT * FROM fruit_data
WHERE city_id NOT IN('4','5','10','11','12','13','16','17') AND grade IN ('A','B')
ORDER BY grade;

SELECT * FROM fruit_data
WHERE city_id IN('1','2','3','6','7','8','9','14','15','18') AND grade IN ('A','B')
ORDER BY grade;

--4. Mengambil data penjualan buah yang packing nya berjenis Carton Box
SELECT * FROM fruit_data
WHERE packing_name = 'Carton Box'

--5. Mengambil data karyawan yang berdomisili di Pulau Jawa
SELECT * FROM employees
WHERE store_city_id NOT IN ('4','5','10','11','12','13','16','17')

--6. Pada bulan Januari 2023, ditanggal berapa jumlah penjualan buah mangga paling sedikit?
SELECT order_date, qty FROM fruit_data
WHERE order_date BETWEEN ('2023-01-01') AND ('2023-01-31') AND fruit_name = 'Mango'
ORDER BY qty ASC
LIMIT 1;

SELECT fruit_name, qty, order_date FROM fruit_data
WHERE TO_CHAR(order_date, 'yyyy-MM') = '2023-01' AND fruit_name ILIKE 'Mango'
ORDER BY qty ASC 
LIMIT 1;

-- 7. Buah apa saja yang terjual lebih dari 20 pcs 2 pekan sebelum Hari Raya Idul Fitri 2023 ?
SELECT fruit_name,SUM(qty) as jumlah FROM fruit_data
WHERE order_date BETWEEN ('2023-04-07') AND ('2023-04-20')
GROUP BY fruit_name
HAVING SUM(qty)>20
ORDER BY jumlah DESC


SELECT fruit_name,SUM(qty) FROM fruit_data
WHERE order_date BETWEEN CAST('2023-04-21' AS Date) - interval '14 day' AND '2023-04-20'
GROUP BY fruit_name
HAVING SUM(qty)>20
ORDER
	
--8. Buah apa yang paling diminati (paling banyak dibeli) ditahun 2023 di Pulau Jawa ?
SELECT fruit_name "Buah Paling Diminati", sum(qty) "Jumlah"  FROM fruit_data
WHERE city_id NOT IN('4','5','10','11','12','13','16','17') AND order_date BETWEEN ('2023-01-01') AND ('2023-12-31')
GROUP BY fruit_name
ORDER BY sum(qty) DESC
LIMIT 1;

SELECT fruit_name, SUM(qty) 
FROM fruit_data
where EXTRACT(YEAR FROM order_date) = 2023
and
exists(select 1 from city 
			where city_id in ('1','2','3','6','7','8','9','15','18')
			)
GROUP BY fruit_name
order by SUM(qty) desc
LIMIT 1
--9. Department karyawan apa yang memiliki cost paling tinggi ?
SELECT department, SUM(salary_2021 + salary_2022 + salary_2023) AS "Total Cost" FROM employees
GROUP BY department 
ORDER BY SUM(salary_2021 + salary_2022 + salary_2023) DESC
LIMIT 1;

--10. Department karyawan apa yang memiliki cost paling rendah ?
SELECT department, SUM(salary_2021 + salary_2022 + salary_2023) AS "Total Cost" FROM employees
GROUP BY department 
ORDER BY "Total Cost" ASC
LIMIT 1;
