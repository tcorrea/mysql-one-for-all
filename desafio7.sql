SELECT a.name AS artista,
al.name AS album,
COUNT(fo.artist_id) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS al ON al.artist_id = a.id
INNER JOIN SpotifyClone.following_artists AS fo ON fo.artist_id = a.id
GROUP BY album, artista
ORDER BY seguidores DESC, a.name, al.name;
