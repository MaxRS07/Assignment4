SELECT artists.name 
FROM artists INNER JOIN albums
ON artists.ArtistId = albums.AlbumId
WHERE albums.Title LIKE "%symphony%"