SELECT
  artists.name AS 'Artista',
  COUNT(history_play_songs.user_id) AS 'Quantidade de músicas reproduzidas'
FROM
  artists
  INNER JOIN
    albums
    ON artists.id = albums.artist_id
  INNER JOIN
    songs
    ON albums.id = songs.album_id
  INNER JOIN
    history_play_songs
    ON songs.id = history_play_songs.song_id
GROUP BY artists.name
HAVING COUNT(history_play_songs.user_id) > 10
;