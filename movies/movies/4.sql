SELECT title FROM movies
WHERE id IN (
    SELECT movie_id FROM ratings
    WHERE Rating = 10);