SELECT Name, count(albums.ArtistId) AS 'NbAlbums', 
	CASE
		WHEN count(albums.ArtistId) = 1 THEN 'Unproductive'
		WHEN count(albums.ArtistId) < 10 THEN 'Productive'
		ELSE 'Very Productive'
	END AS 'IsProductive'
 FROM artists
JOIN albums ON albums.ArtistId = artists.ArtistId
GROUP BY artists.ArtistId
LIMIT 100