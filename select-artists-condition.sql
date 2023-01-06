SELECT Name FROM artists 
JOIN albums ON artists.ArtistId = albums.ArtistId 
GROUP BY albums.ArtistId 
HAVING COUNT(albums.ArtistId) >= 4  
ORDER BY Name DESC