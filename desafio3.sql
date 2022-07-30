SELECT DISTINCT u.user_name AS usuario,
  COUNT(h.user_id) AS qtde_musicas_ouvidas,
  ROUND(SUM( DISTINCT m.music_time)/60, 2)  AS total_minutos
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.history AS h ON u.user_id = h.user_id
INNER JOIN SpotifyClone.musics AS m ON h.music_id = m.music_id
GROUP BY usuario;
