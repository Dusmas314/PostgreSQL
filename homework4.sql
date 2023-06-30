select genres.name as genre_name, count (genres_categories.artists_id) as artists_count 
from genres_categories join genres
on genres_categories.genres_id = genres.genres_id
group by genres.name;


SELECT COUNT(tracks_id) FROM tracks /* Количество айди треков из таблицы треков */
JOIN albums ON tracks.albums_id = albums.albums_id /* Делаем объединение от таблицы треков к альбомам */
WHERE albums.year BETWEEN 2019 and 2020; /* Где год альбома находится в требуемом промежутке */


select albums.name as albums_name, round (avg (tracks.duration), 2) as tracks_avg_duration from tracks 
join albums on tracks.albums_id = albums.albums_id
group by albums.name;


SELECT name /* Получаем имена исполнителей */
FROM artists /* Из таблицы исполнителей */
WHERE name NOT IN ( /* Где имя исполнителя не входит в вложенную выборку */
SELECT artists.name /* Получаем имена исполнителей */
FROM artists /* Из таблицы исполнителей */
JOIN albums_categories ON albums_categories.artists_id = artists.artists_id /* Объединяем с промежуточной таблицей */
JOIN albums ON albums_categories.albums_id = albums.albums_id /* Объединяем с таблицей альбомов */
WHERE albums.year = 2020); /* Где год альбома равен 2020 */


select distinct coll.name as collection_name, art.name as artist_name from collections coll
join tracks_categories t_c on t_c.collections_id = coll.collections_id
join tracks t on t_c.tracks_id = t.tracks_id
join albums alb on t.albums_id = alb.albums_id
join albums_categories alb_c on alb_c.albums_id = alb.albums_id
join artists art on alb_c.artists_id = art.artists_id
where art.name = 'Jay-z';
	
	
SELECT DISTINCT alb.name /* Получаем ТОЛЬКО уникальные имена альбомов. Другие данные в выводе не нужны */
FROM albums alb /* Из таблицы альбомов */
JOIN albums_categories alb_c ON alb_c.albums_id = alb.albums_id /* Объединяем альбомы с промежуточной таблицей между исполнителями */
JOIN artists art ON alb_c.artists_id = art.artists_id /* Объединяем промежуточную таблицу с исполнителями */
JOIN genres_categories gen_c ON gen_c.artists_id = art.artists_id /* Объединяем исполнителей с промежуточной таблицей между жанрами */
GROUP BY alb.name, alb_c.artists_id /* Группируем по именам альбомов и айди исполнителей из промежуточной таблицы между жанрами и исполнителями */
HAVING COUNT(alb_c.albums_id) > 1; /* Где количество id жанров из промежуточной таблицы больше 1 */


select tr.name as tracks_name from tracks tr
left join tracks_categories tr_c on tr_c.tracks_id = tr.tracks_id
left join collections c on tr_c.collections_id = c.collections_id
where c.name is null;


select art.name as artists_name, tr.duration as min_tracks_duration from artists art
join albums_categories alb_c on alb_c.artists_id = art.artists_id
join albums alb on alb_c.albums_id = alb.albums_id
join tracks tr on tr.albums_id = alb.albums_id
where tr.duration = (select min (tracks.duration) from tracks);


select distinct a.name from albums a
join tracks t on t.albums_id = a.albums_id
where t.albums_id in (select albums_id from tracks
    group by albums_id
    having count(albums_id) = (select count(tracks_id) from tracks
        group by albums_id
        order by count
        limit 1
    )
)
order by a.name;