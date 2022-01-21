--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

--1. film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

SELECT COUNT(*) FROM film
WHERE length>
(SELECT  AVG(length)
 FROM film
);


--2. film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

SELECT COUNT(*) FROM film
WHERE rental_rate=
(SELECT  MAX(rental_rate)
 FROM film
);


--3. film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.

SELECT * FROM film
WHERE film_id=ANY(
SELECT film_id 
FROM film
WHERE rental_rate=(SELECT MIN(rental_rate) FROM film) AND 
replacement_cost=(SELECT MIN(replacement_cost) FROM film));


--4. payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız


SELECT * FROM customer
WHERE customer_id= ANY(
SELECT customer_id
	FROM (SELECT customer_id,COUNT(*) 
          FROM payment AS result
        GROUP BY customer_id ) AS result WHERE count=(SELECT MAX(count) FROM (
	SELECT customer_id,COUNT(*) 
FROM payment AS result
GROUP BY customer_id 
) as result )
	);
