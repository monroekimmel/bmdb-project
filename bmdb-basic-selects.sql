-- select all movies
SELECT * FROM bmdb.movie;

-- select a movie by id
-- uses a 'where' clause
select * from movie
where id = 2;

-- select certain columns, all rows
select title, year from movie;

-- select all movies rated PG
select * from movie
where rating = 'PG'

-- select all movies rated PG, ordered by title alphabetically
select * from movie
where rating = 'PG'
order by title;

-- select all movies rated PG, ordered by title alphabetically, descending
select * from movie
where rating = 'PG'
order by title desc;

-- all movies released in 1977 or 1997
-- select statement using the 'in' keyword
select * from movie
where year in (1997,1977);

-- select statement using the 'like' keyword
-- all movies that start with the letter 's'
select * from movie
where title like 'S%'