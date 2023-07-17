SELECT count(DISTINCT(name)) FROM directors
JOIN ratings ON ratings.movie_id = directors.movie_id
JOIN people ON directors.person_id = people.id
WHERE rating >= 9;