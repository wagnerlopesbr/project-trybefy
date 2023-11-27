SELECT
  artists.name AS 'Artista',
  COUNT(artists_followers.artist_id) AS 'Total de seguidores'
FROM
  artists
  INNER JOIN
    artists_followers
    ON artists.id = artists_followers.artist_id
GROUP BY artists.name
HAVING COUNT(artists_followers.artist_id) < 5
;