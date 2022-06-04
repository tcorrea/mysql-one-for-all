-- Crie uma QUERY que deverá ter apenas três colunas:

-- A primeira coluna deve possuir o alias "usuario" e exibir o nome da pessoa usuária.

-- A segunda coluna deve possuir o alias "qtde_musicas_ouvidas" e exibir a quantidade de músicas ouvida pela pessoa com base no seu histórico de reprodução.

-- A terceira coluna deve possuir o alias "total_minutos" e exibir a soma dos minutos ouvidos pela pessoa usuária com base no seu histórico de reprodução.

SELECT u.name AS usuario,
COUNT(h.user_id) AS qtde_musicas_ouvidas,
ROUND(SUM(s.duration_seconds)/60, 2) AS total_minutos
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history AS h ON h.user_id = u.id
INNER JOIN SpotifyClone.songs AS s ON h.song_id = s.id
GROUP BY u.name
ORDER BY u.name;
