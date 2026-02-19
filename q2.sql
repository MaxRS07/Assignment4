SELECT DISTINCT albums.Title, artists.name
FROM 
albums INNER JOIN artists ON albums.ArtistId = artists.ArtistId