# Задание 2

SELECT MAX(duration_min) FROM tracks t ;

SELECT name_track  FROM tracks t 
WHERE duration_min >= 3.5;

SELECT name_collection  FROM collections c  
WHERE year_collection between 2018 and 2020;

SELECT name_executor  FROM executors e  
WHERE name_executor  not like '% %';

SELECT name_track  FROM tracks t 
WHERE name_track like '%my%' or 
name_track like '%My%';

# Задание 3

SELECT name_genre, COUNT(id_executor) as quantity_executors
FROM genre_executor ge
JOIN genres g  ON ge.id_genre  = g.id_genre
GROUP BY name_genre
ORDER BY quantity_executors DESC;
 
SELECT COUNT(id_track) as quantity_tracks
FROM tracks t
JOIN albums a  ON t.id_album = a.id_album
WHERE a.year_album between 2019 and 2020;

SELECT name_album, ROUND(AVG(duration_min),2) as average_duration_of_tracks
FROM tracks t
JOIN albums a  ON t.id_album = a.id_album
GROUP BY name_album;  

SELECT distinct name_executor as Executor_not_2020
FROM executors e 
WHERE e.id_executor not in(
    SELECT ae.id_executor as Executor_not_2020
    FROM album_executor ae 
    JOIN executors e ON e.id_executor  = ae.id_executor
    JOIN albums al ON al.id_album  = ae.id_album
    WHERE al.year_album = 2020
   );
  
SELECT distinct name_collection as Name_for_Sinatra
FROM executors e  
JOIN album_executor ae ON e.id_executor  = ae.id_executor
JOIN tracks t ON t.id_album  = ae.id_album
JOIN track_collection tc ON t.id_track  = tc.id_track
JOIN collections c ON tc.id_collection  = c.id_collection
WHERE name_executor = 'Frank Sinatra'

# Задание 4

SELECT name_album as Albums_executor_multigenre
FROM albums a
JOIN album_executor ae ON a.id_album  = ae.id_album 
WHERE id_executor in (
    SELECT id_executor
    FROM genre_executor ge
    GROUP BY id_executor
    HAVING COUNT(id_genre) > 1
);

SELECT name_track as Track_without_collection
FROM tracks t
LEFT JOIN track_collection tc on t.id_track = tc.id_track
WHERE id_collection is null;

SELECT distinct name_executor as Executors_with_min_track
FROM executors e  
JOIN album_executor ae ON e.id_executor  = ae.id_executor
WHERE ae.id_album in (
    SELECT id_album
    FROM tracks t 
    WHERE duration_min  in(
        SELECT min(duration_min) 
        FROM tracks t
       ));  

SELECT name_album FROM albums a 
JOIN (
    SELECT id_album, count(id_track) as k
    FROM tracks 
    GROUP BY id_album
    ORDER BY k
    LIMIT 1)q
ON a.id_album = q.id_album; 
