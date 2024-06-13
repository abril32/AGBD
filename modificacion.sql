CREATE TABLE user (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 username TEXT UNIQUE NOT NULL,
 password TEXT NOT NULL
);
CREATE TABLE post (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 author_id INTEGER NOT NULL,
 created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 title TEXT NOT NULL,
 body TEXT NOT NULL,
 FOREIGN KEY (author_id) REFERENCES user (id)
);

INSERT INTO user (username,password)
VALUES ("username3211245567","JOhoNLenn0m87"),
	   ("yas","2Ñasm++21");

INSERT INTO post (title,body,author_id)
VALUES ("para que pensar","mejor dormir todo el dia",(SELECT id FROM user WHERE username like "username321%")),
	   ("como hacer manzanas acarmeladas","calentas azuca, limpias la manzana, pones caramelo a la manzana",(SELECT id FROM user WHERE username like "username321%")),
	   ("como dibujar un panda","hace un circulo grande, hace dos circulos chiquitos a cada costado, hacele una cara",(SELECT id FROM user WHERE username like "username321%")),
	   ("como hacer una torta en tres pasos","2 huevos,350 g harina y dos cucharaditas de aceite",(SELECT id FROM user WHERE username like "ya%")),
	   ("dia de la mascota","4 de octubre",(SELECT id FROM user WHERE username like "ya%")),
	   ("como le gusta a la gente harry poter","es aburridisima, su escritora es mala persona",(SELECT id FROM user WHERE username like "ya%"));
	   
INSERT INTO user (username,password)
VALUES ("mm_Xsa", (SELECT password FROM user WHERE username = "yas"))

UPDATE post SET body = " "
WHERE author_id = (SELECT id FROM user WHERE username = "yas");

DELETE FROM post
WHERE author_id = (SELECT id FROM user WHERE username = "yas");

DELETE FROM user
WHERE username = "yas";