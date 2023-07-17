SELECT title
FROM people LEFT JOIN stars ON people.id = stars.person_id
LEFT JOIN movies ON stars.movie_id = movies.id
WHERE name="Helena Bonham Carter"
AND movies.id IN(
    SELECT movies.id
    FROM people LEFT JOIN stars ON people.id = stars.person_id
    LEFT JOIN movies ON stars.movie_id = movies.id
    WHERE name = "Johnny Depp");