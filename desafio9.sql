SELECT COUNT(*) quantidade_musicas_no_historico
FROM SpotifyClone.history AS h
JOIN SpotifyClone.users AS u
ON h.user_id = u.user_id
WHERE u.user_name = 'Bill';