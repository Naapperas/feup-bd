-- most listened to song genre

PRAGMA foreign_keys = ON;

SELECT genre, max(genreListeners) AS numberOfListeners
FROM (
    SELECT genre, count(*) AS genreListeners
    FROM Song
    GROUP BY genre
)