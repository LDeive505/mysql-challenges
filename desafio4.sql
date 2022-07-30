SELECT u.user_name AS usuario,
IF(MAX(YEAR(h.reproduction_date)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users AS u
JOIN SpotifyClone.history AS h
ON u.user_id = h.user_id
GROUP BY usuario;

