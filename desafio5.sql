-- Estamos fazendo um estudo das músicas mais tocadas e precisamos saber quais são as duas músicas mais tocadas no momento. Crie uma QUERY que possua duas colunas:

-- A primeira coluna deve possuir o alias "cancao" e exibir o nome da canção.

-- A segunda coluna deve possuir o alias "reproducoes" e exibir a quantidade de pessoas que já escutaram a canção em questão.

-- Seu resultado deve estar ordenado em ordem decrescente, baseando-se no número de reproduções. Em caso de empate, ordene os resultados pelo nome da canção em ordem alfabética. Queremos apenas o top 2 de músicas mais tocadas.

SELECT s.name AS cancao, COUNT(h.song_id) AS reproducoes FROM history AS h
INNER JOIN songs AS s ON s.id = h.song_id -- pegando os registros na tabela song onde o id for = o que tem no historico
GROUP BY song_id -- agrupando por id da musica para saber a qtde
ORDER BY reproducoes DESC, s.name LIMIT 2;
-- reproducoes DESC = ordenando decrescente a quantidade
-- e ASC por nome
-- limitando para 2 registros
