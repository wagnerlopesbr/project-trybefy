SELECT
  artists.name AS 'Artista'
FROM
  artists
  INNER JOIN albums
    ON artists.id = albums.artist_id
GROUP BY artists.name
  HAVING COUNT(artists.name) >= 3
ORDER BY artists.name ASC
;