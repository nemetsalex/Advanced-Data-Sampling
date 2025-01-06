-- Задание 4
    
-- Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT a.name AS album_name FROM album a
LEFT JOIN album_performer ap ON ap.album_id = a.album_id 
LEFT JOIN performer p ON p.performer_id = ap.performer_id 
LEFT JOIN performer_genre pg ON pg.performer_id = p.performer_id 
LEFT JOIN genre g ON g.genre_id = pg.genre_id 
GROUP BY album_name
HAVING count(distinct g.name) > 1        -- Нет в базе таких альбомов (все альбомы строго по одному жанру)
ORDER BY album_name;

-- Наименования треков, которые не входят в сборники.
SELECT t.name AS track_name FROM track t
WHERE NOT EXISTS (SELECT FROM track_collection tc WHERE tc.track_id  = t.track_id);

-- Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT p.name AS performent_name, t.duration, t.name AS track_name FROM track t
LEFT JOIN album a ON a.album_id = t.album_id
LEFT JOIN album_performer ap ON ap.album_id = a.album_id 
LEFT JOIN performer p ON p.performer_id = ap.performer_id 
GROUP BY performent_name, t.duration, t.name
HAVING t.duration = (SELECT min(duration) FROM track)
ORDER BY performent_name; 

-- Названия альбомов, содержащих наименьшее количество треков.
SELECT a.name AS album_name, count(t.name) AS min_count_tracks FROM album a 
JOIN track t ON t.album_id = a.album_id
WHERE t.album_id IN (SELECT t.album_id FROM track t
                                GROUP BY t.album_id
                                HAVING count (t.album_id) = (SELECT count(t.album_id) FROM track t
                                                             GROUP BY t.album_id
                                                             ORDER BY count(t.album_id)
                                                             LIMIT 1))
GROUP BY album_name;
                                                        
