SELECT
	m.music_name AS nome,
    COUNT(h.user_id) AS reproducoes
FROM SpotifyClone.musics AS m
JOIN SpotifyClone.history AS h ON m.music_id = h.music_id
JOIN SpotifyClone.users AS u ON u.user_id = h.user_id
WHERE u.plan_id = 1 OR u.plan_id = 3
GROUP BY nome
ORDER BY nome;