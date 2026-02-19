-- (15 pts) What are the names of all artists who performed MPEG (video or audio) tracks in either the "Brazilian Music" or the "Grunge" playlists?

SELECT DISTINCT artists.name
FROM artists INNER JOIN (
albums INNER JOIN tracks
ON tracks.AlbumId = albums.AlbumId
INNER JOIN genres ON tracks.GenreId = genres.GenreId
) ON artists.ArtistId = albums.ArtistId
WHERE 
genres.Name LIKE "%Brazilian Music%" OR 
genres.Name LIKE "%Grunge%"