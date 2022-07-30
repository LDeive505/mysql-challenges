SELECT 
	a.artist_name AS artista,
    al.album_name AS album,
    COUNT(f.user_id) AS seguidores
FROM SpotifyClone.albums AS al
JOIN SpotifyClone.artists AS a ON al.artist_id = a.artist_id
JOIN SpotifyClone.followers AS f ON a.artist_id = f.artist_id
GROUP BY artista,album
ORDER BY COUNT(f.user_id) DESC, a.artist_name, al.album_name;