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
/*7*/
/*8*/
/*9*/
/*10*/