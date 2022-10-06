-- 1) film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT COUNT(*) , (SELECT AVG(length) FROM film ) FROM film
WHERE  LENGTH > (SELECT AVG(length) FROM film);

-- 2) film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(rental_rate) FROM film
WHERE rental_rate= (SELECT MAX(rental_rate) FROM film);

-- 3) film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT * FROM film
WHERE rental_rate = (select min(rental_rate) from film) and replacement_cost=(
select min(replacement_cost) from film);


-- 4) payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT  customer_id, count(customer_id) FROM payment
group by customer_id
order by count(customer_id) DESC;