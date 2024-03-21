SELECT * FROM INHABITANT
SELECT * FROM inhabitant WHERE state = 'friendly'
SELECT * FROM inhabitant WHERE state = 'friendly' AND job ='weaponsmith'
SELECT * FROM inhabitant WHERE state = 'friendly' AND job LIKE '%smith'
SELECT personid FROM inhabitant WHERE name = 'Stranger'
SELECT gold FROM inhabitant where name = 'Stranger'