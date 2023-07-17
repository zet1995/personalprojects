SELECT DISTINCT(name) FROM stars
LEFT JOIN movies ON movies.id = stars.movie_id
LEFT JOIN people ON stars.person_id = people.id
WHERE year = 2004
ORDER BY birth;