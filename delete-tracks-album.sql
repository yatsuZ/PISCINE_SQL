DELETE FROM tracks
WHERE AlbumId IS (
	SELECT AlbumId FROM albums
	WHERE albums.Title IS 'Facelift'
)