-- Crie uma QUERY que deve mostrar as pessoas usuárias que estavam ativas no ano de 2021 se baseando na data mais recente no histórico de reprodução.

-- A primeira coluna deve possuir o alias "usuario" e exibir o nome da pessoa usuária.

-- A segunda coluna deve ter o alias "condicao_usuario" e exibir se a pessoa usuária está ativa ou inativa.

-- O resultado deve estar ordenado em ordem alfabética.
SELECT u.name AS usuario, IF(MAX(YEAR(h.listened_date)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history AS h ON h.user_id = u.id
GROUP BY u.name
ORDER BY u.name;
