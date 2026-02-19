-- (5 pts) What are the names of each album and the artist who created it?

SELECT DISTINCT albums.Title, artists.Name
FROM 
albums INNER JOIN artists ON albums.ArtistId = artists.ArtistId