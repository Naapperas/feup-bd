--How many followers each artist has?--

PRAGMA foreign_keys = ON;

.mode columns
.headers on
.nullvalue NULL

CREATE VIEW IF NOT EXISTS ArtistInfo AS
SELECT *
FROM User NATURAL JOIN Artist;

CREATE VIEW IF NOT EXISTS FollowedArtists AS
SELECT * 
FROM ArtistInfo
JOIN Follows ON ArtistInfo.id = Follows.UserId2;

SELECT userName, count(*) as followers
FROM FollowedArtists
GROUP BY userName
UNION
SELECT userName, 0
FROM ArtistInfo
WHERE ArtistInfo.id NOT IN (SELECT UserId2 AS id FROM Follows)
GROUP BY userName
ORDER BY followers DESC;