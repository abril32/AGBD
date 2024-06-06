INSERT INTO Division (año,curso)
VALUES (5,"B"),
	   (5,"D");
	   
INSERT INTO Profesor (nombre,apellido)
VALUES ("Enrico","Rovaletti"),
	   ("Nahuel","Aruni"),
	   ("Andres","Navarro"),
	   ("Tomas","Mayorga"),
	   ("Federico","Villace"),
	   ("Maximiliano","Urso"),
	   ("Eduardo","Mestrovich"),
	   ("Jose","Albornoz"),
	   ("Alejandro","Salomon");
	   
INSERT INTO Materias (nombre,año)
VALUES ("Diseño multimedial",5),
	   ("Diseño de software",5),
	   ("Programacion WEB",5),
	   ("Administracion y gestion de base de datos",5),
	   ("Dispositivos electronicos programables",5),
	   ("Redes de datos",5);
	   


INSERT INTO asignacion (materia_id,profesor_id,division_id)
VALUES((SELECT materia_id FROM Materias 
		WHERE nombre like "%multimedial%"),
		(SELECT profesor_id FROM Profesor
		WHERE apellido like "%aruni%"),
		(SELECT division_id FROM Division
		WHERE curso = "D" AND año = 5));
		
INSERT INTO asignacion (materia_id,profesor_id,division_id)	
VALUES((SELECT materia_id FROM Materias 
		WHERE nombre like "%multimedial%"),
		(SELECT profesor_id FROM Profesor
		WHERE apellido like "%Rovaletti%"),
		(SELECT division_id FROM Division
		WHERE curso = "D" AND año = 5));
		
		
INSERT INTO asignacion (materia_id,profesor_id,division_id)	
VALUES((SELECT materia_id FROM Materias 
		WHERE nombre like "%software%"),
		(SELECT profesor_id FROM Profesor
		WHERE apellido like "%navarro%"),
		(SELECT division_id FROM Division
		WHERE curso = "D" AND año = 5));
		
		
INSERT INTO asignacion (materia_id,profesor_id,division_id)	
VALUES((SELECT materia_id FROM Materias  
		WHERE nombre like "%software%"),
		(SELECT profesor_id FROM Profesor
		WHERE nombre like "%tomas%"),
		(SELECT division_id FROM Division
		WHERE curso = "D" AND año = 5)); 
		
INSERT INTO asignacion (materia_id,profesor_id,division_id)	
VALUES((SELECT materia_id FROM Materias   
		WHERE nombre like "%web%"),
		(SELECT profesor_id FROM Profesor
		WHERE apellido like "%villace%"),
		(SELECT division_id FROM Division
		WHERE curso = "D" AND año = 5));
		
INSERT INTO asignacion (materia_id,profesor_id,division_id)	
VALUES((SELECT materia_id FROM Materias  
		WHERE nombre like "%web%"),
		(SELECT profesor_id FROM Profesor
		WHERE nombre like "%tomas%"),
		(SELECT division_id FROM Division
		WHERE curso = "D" AND año = 5));
		
INSERT INTO asignacion (materia_id,profesor_id,division_id)	
VALUES((SELECT materia_id FROM Materias  
		WHERE nombre like "%base%"),
		(SELECT profesor_id FROM Profesor
		WHERE apellido like "%navarro%"),
		(SELECT division_id FROM Division
		WHERE curso = "D" AND año = 5));
		
INSERT INTO asignacion (materia_id,profesor_id,division_id)	
VALUES((SELECT materia_id FROM Materias  
		WHERE nombre like "%base%"),
		(SELECT profesor_id FROM Profesor
		WHERE nombre like "%tomas%"),
		(SELECT division_id FROM Division
		WHERE curso = "D" AND año = 5));
		
INSERT INTO asignacion (materia_id,profesor_id,division_id)	
VALUES((SELECT materia_id FROM Materias  
		WHERE nombre like "%dispositivos%"),
		(SELECT profesor_id FROM Profesor
		WHERE apellido like "%urso%"),
		(SELECT division_id FROM Division
		WHERE curso = "D" AND año = 5));
		
INSERT INTO asignacion (materia_id,profesor_id,division_id)	
VALUES((SELECT materia_id FROM Materias  
		WHERE nombre like "%dispositivos%"),
		(SELECT profesor_id FROM Profesor
		WHERE nombre like "%eduardo%"),
		(SELECT division_id FROM Division
		WHERE curso = "D" AND año = 5));
		
INSERT INTO asignacion (materia_id,profesor_id,division_id)	
VALUES((SELECT materia_id FROM Materias  
		WHERE nombre like "%redes%"),
		(SELECT profesor_id FROM Profesor
		WHERE apellido like "%salomon%"),
		(SELECT division_id FROM Division
		WHERE curso = "D" AND año = 5));
		
INSERT INTO asignacion (materia_id,profesor_id,division_id)	
VALUES((SELECT materia_id FROM Materias  
		WHERE nombre like "%redes%"),
		(SELECT profesor_id FROM Profesor
		WHERE apellido like "%albornoz%"),
		(SELECT division_id FROM Division
		WHERE curso = "D" AND año = 5));