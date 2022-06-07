SELECT a.name AS artista,
al.name AS album
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS al ON al.artist_id = a.id
WHERE a.name = "Walter Phoenix";
