-- (10 pts) What are the names of the artists who made an album containing the substring "symphony" in the album title?
    
SELECT artists.name 
FROM artists INNER JOIN albums
ON artists.ArtistId = albums.AlbumId
WHERE albums.Title LIKE "%symphony%"