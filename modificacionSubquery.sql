/*Creo una nueva region */
INSERT INTO regions (region_name)
VALUES("Africa");

/*Cambio de nombre a mi tabla combinada */
UPDATE regions SET region_name = "Middle East"
WHERE region_name = 
    (SELECT region_name FROM regions 
    WHERE region_name like "%East%");

/*Paso los paises a su region*/
UPDATE countries SET region_id = (
	SELECT region_id FROM regions
	WHERE region_name like "%africa%")
WHERE country_name in ("Egypt","Nigeria","Zambia","Zimbabwe")

/* Agrego más países*/
INSERT INTO countries (country_name,country_id ,region_id)
VALUES ("Iran", "IR" ,4),
		("Irak", "IQ" ,4)
		("Ethiopia", "ET" ,5),
		("South Africa", "ZA" ,5);