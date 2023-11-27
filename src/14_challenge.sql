SELECT
  artists.name AS 'Artista',
  GROUP_CONCAT(albums.title) AS 'Álbuns'
FROM
  artists
  INNER JOIN albums
    ON artists.id = albums.artist_id
GROUP BY artists.name
ORDER BY artists.name ASC
;