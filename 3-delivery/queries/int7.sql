-- Song recommendations based on user's liked songs

PRAGMA foreign_keys = ON;

.mode columns
.headers on
.nullvalue NULL

-- text example for Consumer id 1

DROP VIEW IF EXISTS LikedSongsPerUser;
DROP VIEW IF EXISTS LikedSongsForUser1;
DROP VIEW IF EXISTS SongsPerGenre;

CREATE VIEW IF NOT EXISTS LikedSongsPerUser AS
SELECT *
FROM LikedSong
JOIN Song ON Song.id = LikedSong.songId;

CREATE VIEW IF NOT EXISTS LikedSongsForUser1 AS
SELECT *
FROM LikedSongsPerUser
WHERE userId = 1;

CREATE VIEW IF NOT EXISTS SongsPerGenre AS
SELECT genre, count(*) as songsPerGenre
FROM LikedSongsForUser1
GROUP BY genre;

SELECT *
FROM Song
WHERE genre IN (
    SELECT genre
    FROM SongsPerGenre
    WHERE songsPerGenre IN 
    (
        SELECT max(songsPerGenre)
        FROM SongsPerGenre
    )
)
EXCEPT
SELECT * FROM Song WHERE Song.id IN 
(
    SELECT id 
    FROM LikedSongsForUser1
);
