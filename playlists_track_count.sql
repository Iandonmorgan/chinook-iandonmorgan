SELECT pt.PlaylistId as 'Playlist ID', p.Name as 'Playlist Name', COUNT(pt.TrackId) as 'Total Tracks'
FROM PlaylistTrack pt
JOIN Playlist p
ON p.PlaylistId = pt.PlaylistId
GROUP BY pt.PlaylistId