SELECT Title AS AlbumName, Name AS TrackName, Milliseconds FROM albums 
JOIN tracks ON tracks.AlbumId = albums.AlbumId
ORDER BY Milliseconds
LIMIT 50