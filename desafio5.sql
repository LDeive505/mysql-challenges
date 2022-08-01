SELECT
m.music_name AS cancao,
COUNT(h.music_id) AS reproducoes
FROM SpotifyClone.musics AS m
JOIN SpotifyClone.history as h
ON h.music_id = m.music_id
GROUP BY cancao
ORDER BY COUNT(h.music_id) DESC, cancao
LIMIT 2;