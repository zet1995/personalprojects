SELECT DISTINCT name FROM people
JOIN stars ON people.id = stars.person_id
JOIN movies ON stars.movie_id = movies.id
WHERE name != "Kevin Bacon"
AND movie_id IN (
    SELECT movie_id FROM people
    JOIN stars ON people.id = stars.person_id
    WHERE name = "Kevin Bacon"
    AND birth = 1958);