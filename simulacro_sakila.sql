/*1*/
SELECT title FROM film
ORDER by title ASC
/*2*/
SELECT DISTINCT rating FROM film
ORDER by rating ASC
/*3*/
SELECT DISTINCT title,replacement_cost,rating FROM film
WHERE rating like '%PG%'
ORDER by replacement_cost DESC,title ASC
/*4*/
SELECT country,city FROM city ci
JOIN country c on ci.country_id = c.country_id
ORDER by c.country ASC
/*5*/
SELECT country,count(ci.city) as cant_ciudad FROM city ci
JOIN country c on ci.country_id = c.country_id
GROUP by c.country_id
ORDER by cant_ciudad DESC
/*6*/
SELECT country,count(ci.city) FROM city ci
JOIN country c on ci.country_id = c.country_id
GROUP by c.country_id
HAVING count(ci.city) >= 2
ORDER by count(ci.city) ASC
/*7 falta*/
SELECT min(rental_date), max(rental_date) FROM rental
/*8*/
SELECT count(fa.actor_id) as cant_Actors, f.title FROM film f
JOIN film_actor fa on f.film_id = fa.film_id
GROUP BY fa.actor_id
ORDER BY cant_Actors ASC
LIMIT 10
/*9*/
SELECT count(rental_date) as fecha_renta,title FROM film f
JOIN inventory i on f.film_id = i.film_id 
JOIN rental r on i.inventory_id = r.inventory_id
GROUP by i.film_id
ORDER BY fecha_renta DESC
LIMIT 1 OFFSET 2
/*10*/
SELECT round(avg(actores),2), max(actores) FROM (
select f.film_id,title, count(actor_id) as actores FROM film_actor fa
JOIN film f ON f.film_id = fa.film_id
WHERE length BETWEEN 90 AND 120
GROUP BY f.film_id)