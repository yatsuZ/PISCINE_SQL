SELECT artists.Name AS 'ArtistName', albums.Title AS 'AlbumName', tracks.Name AS 'TrackName', round(tracks.Bytes/1000000.0,2) || ' MB' AS 'MegaBytes' FROM albums 
JOIN tracks ON tracks.AlbumId = albums.AlbumId
JOIN artists ON artists.ArtistId = albums.ArtistId
WHERE albums.Title IS 'American Idiot'