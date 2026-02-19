-- (25 pts) What is the total length of each playlist in hours? List the playlist id and name of only those playlists that are longer than 2 hours, along with the length in hours rounded to two decimals.

SELECT playlists.PlaylistId, playlists.Name,  TOTAL(tracks.Milliseconds) / 3600000 as "Hours"
FROM playlists
INNER JOIN playlist_track ON playlists.PlaylistId = playlist_track.PlaylistId
INNER JOIN tracks ON playlist_track.TrackId = tracks.TrackId
GROUP BY playlists.PlaylistId
HAVING TOTAL(tracks.Milliseconds) > 7200000