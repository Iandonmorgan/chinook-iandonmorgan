SELECT pt.PlaylistId as 'Playlist ID', p.Name as 'Playlist Name', COUNT(pt.TrackId) as 'Total Tracks'
FROM PlaylistTrack pt
JOIN Playlist p
ON p.PlaylistId = pt.PlaylistId
GROUP BY pt.PlaylistId

-- curious why the data for PlaylistTrack in TablePlus doesn't look like it has the full data, looks like it only has data for PlaylistId 1.