SELECT DISTINCT tracks.Name AS TrackName , playlists.Name AS PlaylistName FROM playlist_track
JOIN playlists ON playlists.PlaylistId = playlist_track.PlaylistId
JOIN tracks ON tracks.TrackId = playlist_track.TrackId
WHERE playlists.Name IS 'TV Shows'
LIMIT 100