SELECT
  artists.name AS 'Artista',
  COUNT(songs.id) AS 'Quantidade de músicas'
FROM
  artists
  INNER JOIN
    albums
    ON albums.artist_id = artists.id
  INNER JOIN
    songs
    ON songs.album_id = albums.id
GROUP BY artists.name
ORDER BY
  COUNT(songs.id) DESC,
  artists.name ASC
LIMIT 3
;