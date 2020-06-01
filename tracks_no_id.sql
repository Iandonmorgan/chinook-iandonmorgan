SELECT t.Name as 'Track Name', a.Title as 'Album Name', mt.Name as 'Media Type', g.Name as 'Genre'
FROM Track t
JOIN Album a
ON t.AlbumId = a.AlbumId
JOIN MediaType mt
ON t.MediaTypeId = mt.MediaTypeId
JOIN Genre g
ON t.GenreId = g.GenreId
ORDER BY a.Title, t.Name