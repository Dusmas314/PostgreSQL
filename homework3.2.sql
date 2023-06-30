select * from albums
where year = 2018;

select name, duration from tracks
order by duration desc
limit 1;

select name, duration from tracks
where duration >= 210;

select * from collections
where year between 2018 and 2020;

select name from artists
where name not like '% %';


SELECT name FROM tracks
WHERE name ILIKE 'my %' /* Где слово в начале строки */
OR name ILIKE '% my' /* Где слово в конце строки */
OR name ILIKE '% my %' /* Где слово в середине строки */
OR name ILIKE 'my' /* Где название трека состоит из одного искомого слова */
OR name ILIKE 'мой %' /* Где слово в начале строки */
OR name ILIKE '% мой' /* Где слово в конце строки */
OR name ILIKE '% мой %' /* Где слово в середине строки */
OR name ILIKE 'мой'; /* Где название трека состоит из одного искомого слова */