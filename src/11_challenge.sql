SELECT
  title AS 'Album',
  release_year AS 'Ano de lançamento',
  name AS 'Artista'
FROM
  albums
  INNER JOIN artists
    ON albums.artist_id = artists.id
      WHERE albums.title LIKE '%you%'
ORDER BY albums.release_year ASC
;