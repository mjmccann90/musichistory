--INSERT INTO Artist (ArtistName, YearEstablished)
--VALUES ('Black Keys', 2001);

--INSERT INTO Album (Title, ReleaseDate, AlbumLength, [Label], ArtistId)
--VALUES ('El Camino', '12/6/2011', 38, 'Nonesuch Records', 1002);

--INSERT INTO Album (Title, ReleaseDate, AlbumLength, [Label], ArtistId)
--VALUES ('Lets Rock', '6/28/2019', 38, 'Nonesuch Records', 1002);

--INSERT INTO Album (Title, ReleaseDate, AlbumLength, [Label], ArtistId)
--VALUES ('Brothers', '5/18/2010', 55, 'Nonesuch Records', 1002);

--INSERT INTO Song (Title, SongLength, ReleaseDate, ArtistId, AlbumId)
--VALUES ('Hi/Lo', 3, '6/28/2019', 1002, 1005);

--INSERT INTO Song (Title, SongLength, ReleaseDate, ArtistId, AlbumId)
--VALUES ('Little Black Submarines', 551, '12/6/2011', 1002, 1004);

--Write a SELECT query that provides the song titles, 
--album title, and artist name for all of the data you just entered in. 
--Use the LEFT JOIN keyword sequence to connect the tables, 
--and the WHERE keyword to filter the results to the album and artist you added.

--SELECT s.Title as SongTitle, 
--		al.Title as AlbumTitle, 
--		a.ArtistName as ArtistName
--FROM Song s LEFT JOIN Album al ON s.AlbumId = al.Id LEFT JOIN Artist a ON s.ArtistId = a.Id;

--Write a SELECT statement to display how many songs exist for each album. 
--You'll need to use the COUNT() function and the GROUP BY keyword sequence.
-- a = Album
-- s = Song
--SELECT a.Id, a.Title, COUNT (s.Id) as SongCount
--FROM Album a LEFT JOIN Song s ON s.AlbumId = a.Id
--GROUP BY a.Id, a.Title;

--Write a SELECT statement to display how many songs exist for each artist. 
--You'll need to use the COUNT() function and the GROUP BY keyword sequence.
-- a = Artist
-- s = Song
--SELECT a.Id, ArtistName, COUNT (s.Id) as ArtistSongCount
--From Artist a LEFT JOIN Song s ON s.ArtistId = a.Id
--GROUP BY a.Id, ArtistName;

--Write a SELECT statement to display how many songs exist for each genre. 
--You'll need to use the COUNT() function and the GROUP BY keyword sequence.
-- g = Genre
-- s = Song
SELECT g.Id, g.[Label], COUNT (s.Id) as GenreCount
From Song s LEFT JOIN Genre g ON s.GenreId = g.Id
GROUP BY g.Id, g.[Label];