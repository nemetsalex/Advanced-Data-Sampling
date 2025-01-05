-- Задание 3
    
-- Количество исполнителей в каждом жанре.
SELECT g.name AS genre_name, count(p.name) AS performer_count FROM genre g 
JOIN performer_genre pg ON pg.genre_id = g.genre_id 
JOIN performer p ON p.performer_id = pg.performer_id 
GROUP BY g.name
ORDER BY performer_count;

-- A) Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT a.name AS album_name, count(t.name) AS track_count FROM album a
JOIN track t ON t.album_id = a.album_id
WHERE a.year BETWEEN '2019-01-01 00:00:00' AND '2020-12-31 23:59:59'
GROUP BY album_name
ORDER BY track_count;

-- Б) Количество треков, вошедших в альбомы 1991–1995 годов.
SELECT a.name AS album_name, count(t.name) AS track_count FROM album a
JOIN track t ON t.album_id = a.album_id
WHERE a.year BETWEEN '1991-01-01 00:00:00' AND '1995-12-31 23:59:59'
GROUP BY album_name
ORDER BY track_count;

-- Средняя продолжительность треков по каждому альбому.
SELECT a.name AS album_name, avg(t.duration) AS average_duration FROM album a
JOIN track t ON t.album_id = a.album_id 
GROUP BY album_name
ORDER BY average_duration;

-- A) Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT p.name AS performer_name FROM performer p 
WHERE p.name NOT IN (SELECT DISTINCT p.name AS performer_name FROM performer p 
JOIN album_performer ap ON p.performer_id = ap.performer_id  
JOIN album a ON ap.album_id = a.album_id 
WHERE EXTRACT(YEAR FROM a.year) = '2020')
ORDER BY performer_name;

-- Б) Все исполнители, которые не выпустили альбомы в 1991-1995 годах.
SELECT DISTINCT p.name AS performer_name FROM performer p 
WHERE p.name NOT IN (SELECT DISTINCT p.name AS performer_name FROM performer p 
JOIN album_performer ap ON p.performer_id = ap.performer_id  
JOIN album a ON ap.album_id = a.album_id 
WHERE EXTRACT(YEAR FROM a.year) in ('1991', '1992', '1993', '1994', '1995'))
ORDER BY performer_name;

-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT c.name AS collection_name, p.name AS performer_name FROM collection c
JOIN track_collection tc ON tc.collection_id = c.collection_id 
JOIN track t ON t.track_id = tc.track_id 
JOIN album a ON a.album_id = t.album_id 
JOIN album_performer ap ON ap.album_id = a.album_id 
JOIN performer p ON p.performer_id = ap.performer_id
WHERE p.performer_id = '5'                              -- 'AC/DC'
GROUP BY  collection_name, performer_name; 