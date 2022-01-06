--1. test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

CREATE TABLE employee(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	birthday DATE,
	email VARCHAR(100)
);


--2. Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
![Alt text](C:\Users\gaye3\OneDrive\Masaüstü\FILES\mockara.jpg?raw=true "Title")

--3. Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.

UPDATE employee
SET name='Claire'
WHERE id=2;

UPDATE employee
SET  birthday='2011-10-17'
WHERE id=3;

UPDATE employee
SET  email='wood3@tinyurl.com'
WHERE id=4;

UPDATE employee
SET  email='wood34554@tinyurl.com'
WHERE id=4;


UPDATE employee
SET  email='wood34554@tinyurl.com',
     name ='AAAA'
WHERE id=4;


--4. Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE id=2;

DELETE FROM employee
WHERE name='Claire';

DELETE FROM employee
WHERE email='wood34554@tinyurl.com';

DELETE FROM employee
WHERE birthday='1990-04-11';


DELETE FROM employee
WHERE name = 'Storm' AND email= 'shuyton8@home.pl';
