SELECT COUNT(*) as NumberOfArtists
FROM (
  SELECT artists.ArtistId
  FROM artists 
  INNER JOIN albums ON artists.ArtistId = albums.ArtistId
  INNER JOIN tracks ON tracks.AlbumId = albums.AlbumId
  GROUP BY artists.ArtistId
  HAVING COUNT(*) >= 10
)