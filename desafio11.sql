SELECT 
	music_name AS nome_musica,
CASE
    WHEN music_name LIKE '%Streets' THEN REPLACE(music_name, 'Streets', 'Code Review')
    WHEN music_name LIKE '%Her Own%' THEN REPLACE(music_name, 'Her Own', 'Trybe')
    WHEN music_name LIKE '%Inner Fire%' THEN REPLACE(music_name, 'Inner Fire', 'Project')
    WHEN music_name LIKE '%Silly%' THEN REPLACE(music_name, 'Silly', 'Nice')
    WHEN music_name LIKE '%Circus%' THEN REPLACE(music_name, 'Circus', 'Pull Request')
END AS novo_nome    
FROM SpotifyClone.musics
GROUP BY nome_musica, novo_nome
HAVING nome_musica <> novo_nome;

