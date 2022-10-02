-- 1-) city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT * FROM city;

SELECT * FROM country
Where country ILIKE'A%'
ORDER BY country;

Select * FROM film
Where replacement_cost > 10
ORDER BY title;



-- 2-) customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

SELECT * FROM customer;

