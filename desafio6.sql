SELECT MIN(p.cost) AS faturamento_minimo,
MAX(p.cost) AS faturamento_maximo,
FORMAT(SUM(p.cost)/COUNT(u.name), 2) AS faturamento_medio,
SUM(p.cost) AS faturamento_total
FROM SpotifyClone.plans AS p
INNER JOIN SpotifyClone.users AS u ON u.plan_id = p.id;
-- inner = pegando todos os valores baseado nos usuarios
