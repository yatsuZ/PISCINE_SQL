SELECT genres.Name, count(tracks.GenreId) AS 'NumberOfTracks' FROM genres
JOIN tracks ON tracks.GenreId = genres.GenreId
GROUP BY genres.Name
ORDER BY genres.Name