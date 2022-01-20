-- most listened to song genre

PRAGMA foreign_keys = ON;

SELECT genre, count(*) as numberOfListeners
FROM Song
GROUP BY genre
ORDER BY numberOfListeners DESC
LIMIT 1

