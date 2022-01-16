-- most listened to songs from the top-5 artists

PRAGMA foreign_keys = ON;

CREATE VIEW IF NOT EXISTS ArtistInfo AS
SELECT User.*, about, monthlyListeners
FROM User, Artist
WHERE User.id = Artist.id;

SELECT User.userName as artistName, songName, duration, isExplicit, genre, max(numberOfStreams) as numberOfStreams
FROM Song,
(
    SELECT Album.id AS albumId, A.mainArtist AS artistId
    FROM Album,
    (
        SELECT id AS mainArtist
        FROM ArtistInfo
        ORDER BY monthlyListeners DESC
        LIMIT 5
    ) A
    WHERE Album.mainArtist = A.mainArtist
) B, User
WHERE Song.albumId = B.albumId AND B.artistId = User.id
GROUP BY B.albumId;
