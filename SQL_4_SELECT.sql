--Количество исполнителей в каждом жанре.
 --ИСПРАВЛЕНО
SELECT name, COUNT(*) 
  FROM genre AS g
  LEFT JOIN genre_singer AS gs 
	     ON g.id = gs.genre_id
 GROUP BY name
 ORDER BY COUNT(*);
 
--Количество треков, вошедших в альбомы 2019–2020 годов.
 SELECT COUNT(t.id) 
  FROM track AS t            
       JOIN album AS a  
       ON t.album_id = a.id   
  WHERE year BETWEEN 2019 AND 2020;
   
--Средняя продолжительность треков по каждому альбому.
SELECT a.name, AVG(time) 
  FROM track AS t
       JOIN album AS a 
         ON a.id = t.album_id
 GROUP BY a.name;

--Все исполнители, которые не выпустили альбомы в 2020 году.
--ИСПРАВЛЕНО

SELECT DISTINCT s.name 
  FROM singer AS s
WHERE s.name NOT IN
(SELECT DISTINCT s.name AS s FROM singer
	 JOIN singer_album AS sa 
	   ON s.id = sa.singer_id  
	 JOIN album AS a 
	   ON sa.album_id = a.id
WHERE a.year = 2020)
ORDER BY s.name;


--Названия сборников, в которых присутствует конкретный исполнитель Slipknot.
SELECT c.name 
  FROM track_collection AS tc
       JOIN collection AS c 
         ON tc.collection_id = c.id
       JOIN track AS t 
         ON tc.track_id = t.id
       JOIN singer_album AS sa 
         ON t.album_id = sa.album_id
       JOIN singer AS s 
         ON sa.singer_id = s.id
 WHERE s.name iLIKE '%Slipknot%'
 GROUP BY c.name
 
--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
 --иСПРАВЛЕНО
 SELECT DISTINCT a.name 
  FROM album AS a  
       JOIN singer_album AS sa  
       ON a.id  = sa.singer_id  
       JOIN singer AS s  
       ON sa.album_id  = s.id  
       JOIN genre_singer AS gs  
       ON gs.singer_id  = s.id  
 GROUP BY a.name, gs.singer_id
HAVING COUNT(gs.genre_id) > 1; 


-- название альбомов, в которых присутствуют исполнители более 1 жанра

 SELECT DISTINCT a.name 
  FROM album AS a  
       JOIN singer_album AS sa   
       ON a.id  = sa.singer_id  
       JOIN singer AS s        
       ON sa.album_id  = s.id  
       JOIN genre_singer AS g  
       ON g.singer_id  = s.id  
 GROUP BY a.name, g.singer_id  
HAVING COUNT(g.genre_id) > 1; 


--Наименования треков, которые не входят в сборники.
SELECT t.name 
  FROM track AS t
       LEFT JOIN track_collection AS tc 
              ON t.id = tc.track_id
 WHERE tc.track_id IS NULL;

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек.
SELECT t.name, time, s.name 
  FROM track AS t 
       JOIN album AS a 
         ON t.album_id = a.id
       JOIN singer_album AS sa 
         ON a.id = sa.album_id
       JOIN singer AS s 
         ON s.id = sa.singer_id
 WHERE time = (SELECT MIN(time) FROM track);

--Названия альбомов, содержащих наименьшее количество треков.
SELECT a.name, COUNT(t.name) 
  FROM track AS t 
       JOIN album AS a 
         ON t.album_id = a.id
 GROUP BY a.name
HAVING COUNT(t.name) = (
       SELECT COUNT(a.name) 
         FROM track AS t 
              JOIN album AS a 
                ON t.album_id = a.id
        GROUP BY a.name
        ORDER BY COUNT(t.name) 
        LIMIT 1);
