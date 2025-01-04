-- Задание 2  

-- Название и продолжительность самого длительного трека.
SELECT name, duration 
FROM track 
WHERE duration = (SELECT max(duration) FROM track);

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT name 
FROM track 
WHERE duration >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name 
FROM collection 
WHERE year BETWEEN '2018-01-01' AND '2020-12-31';

-- Исполнители, чьё имя состоит из одного слова.
SELECT name
FROM performer
WHERE name NOT LIKE '%% %%';

-- Название треков, которые содержат слово «мой» или «my».
SELECT name 
FROM track 
WHERE name iLIKE '%my%';