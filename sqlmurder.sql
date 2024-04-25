/*1*/
SELECT * FROM crime_scene_report
WHERE date = 20180115 AND type = 'murder' AND city = 'SQL City'

-- Security footage shows that there were 2 witnesses. 
-- The first witness lives at the last house on "Northwestern Dr". 
-- The second witness, named Annabel, lives somewhere on "Franklin Ave".

/*2*/
SELECT name, id FROM person
WHERE name like 'Annabel%' And address_street_name = 'Franklin Ave'

-- name	            id
-- Annabel Miller	16371
-- id   nombre         licencia altura calle
--16371	Annabel Miller	490173	103	Franklin Ave

/*3*/
SELECT name,license_id,address_street_name, id,max(address_number) FROM person
WHERE address_street_name = 'Northwestern Dr'

-- nombre             licencia   calle      id      altura
-- Morty Schapiro	118009	Northwestern Dr	14887	4919

/*4*/
SELECT * FROM interview i
WHERE person_id = 14887 OR person_id =16371

person_id	transcript

--14887	I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. 
--The membership number on the bag started with "48Z". Only gold members have those bags. 
--The man got into a car with a plate that included "H42W".
--16371	I saw the murder happen, and I recognized the killer from my gym when I was working out 
--last week on January the 9th.
/*5*/
/*6*/
/*7*/