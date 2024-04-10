/*1*/ SELECT NAME, Milliseconds, Composer FROM tracks
/*2*/SELECT FirstName, LastName, Address, City FROM customers
/*3*/SELECT name, Milliseconds FROM tracks
WHERE Composer is NULL and Milliseconds >2900000
/*4*/SELECT LastName, FirstName, Company FROM customers
WHERE Company is not NULL
/*5*/SELECT DISTINCT BillingCity FROM invoices
WHERE BillingState is not NULL
ORDER by BillingCity DESC 
/*6*/SELECT Title FROM albums
WHERE Title like "%of%"
ORDER by Title ASC
/*7*/SELECT t.Name, g.Name from tracks t
JOIN genres g on t.GenreId = g.GenreId
/*8*/SELECT name, Title FROM tracks t
JOIN albums a on t.AlbumId = a.AlbumId
ORDER by Title DESC