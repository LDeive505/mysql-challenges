SELECT
COUNT(DISTINCT m.music_name) AS cancoes,
COUNT(DISTINCT ar.artist_name) AS artistas,
COUNT(DISTINCT al.album_name) AS albums
FROM SpotifyClone.musics AS m, SpotifyClone.artists AS ar, SpotifyClone.albums AS al;