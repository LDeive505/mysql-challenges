SELECT 
    ROUND(MIN(p.price), 2) AS faturamento_minimo,
    MAX(p.price) AS faturamento_maximo,
    ROUND(AVG(p.price), 2) AS faturamento_medio,
    ROUND(SUM(p.price), 2) AS faturamento_total
FROM
    SpotifyClone.plans AS p
        INNER JOIN
    SpotifyClone.users AS u ON p.plan_id = u.plan_id;

