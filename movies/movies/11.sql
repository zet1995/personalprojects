SELECT title FROM movies
LEFT JOIN ratings ON movies.id = ratings.movie_id
LEFT JOIN stars ON ratings.movie_id = stars.movie_id
LEFT JOIN people ON stars.person_id = people.id
WHERE name ="Chadwick Boseman"
ORDER BY rating desc LIMIT 5;