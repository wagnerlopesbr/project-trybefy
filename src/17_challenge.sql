SELECT
  songs.title AS 'Título'
FROM
  songs
  INNER JOIN
    albums
    ON songs.album_id = albums.id
  WHERE
    songs.album_id = 1
ORDER BY songs.title ASC
;