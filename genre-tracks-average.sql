SELECT genres.Name, avg(tracks.Milliseconds) AS 'AverageDuration' FROM genres
JOIN tracks ON tracks.GenreId = genres.GenreId
GROUP BY genres.Name
ORDER BY avg(tracks.Milliseconds) DESC
