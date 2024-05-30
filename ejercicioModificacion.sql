INSERT INTO artists (name)
VALUES ("Taylor Swift");

INSERT INTO albums (Title, ArtistId)
VALUES ("Red",276);

INSERT INTO tracks (name,MediaTypeId,Milliseconds,UnitPrice)
VALUES ("All Too Well",1,316800,0.99),
	   ("Starlight",1,202800,0.99),
	   ("We Are Never Ever Getting Back Together",1,187200,0.99);

UPDATE tracks SET AlbumId = 276, Composer = "Taylor Swift", GenreId = 9, Bytes = "392650" 
	WHERE GenreId is NULL;

DELETE FROM tracks 
WHERE Composer = "Taylor Swift" 

DELETE FROM albums
WHERE Title = "Red"

DELETE FROM artists
WHERE name = "Taylor Swift"