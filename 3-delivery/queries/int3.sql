-- most listened to songs from the top-5 artists

PRAGMA foreign_keys = ON;

.mode columns
.headers on
.nullvalue NULL

SELECT A.id, User.userName as artistName, Album.albumName as albumName, Song.songName, Song.duration, Song.isExplicit, Song.genre, Song.numberOfStreams, Song.positionInAlbum
FROM User
JOIN (SELECT id, monthlyListeners FROM Artist ORDER BY monthlyListeners DESC LIMIT 5) A ON User.id = A.id
JOIN Album ON Album.mainArtist = A.id
JOIN Song ON Album.id = Song.albumId
GROUP BY A.id, Album.id
HAVING Song.numberOfStreams = max(Song.numberOfStreams)
ORDER BY A.monthlyListeners DESC, Song.numberOfStreams DESC;

-- SELECT User.userName as artistName, songName, duration, isExplicit, genre, max(numberOfStreams) as numberOfStreams
-- FROM Song,
-- (
--     SELECT Album.id AS albumId, A.mainArtist AS artistId
--     FROM Album,
--     (
--         SELECT id AS mainArtist
--         FROM Artist
--         ORDER BY monthlyListeners DESC
--         LIMIT 5
--     ) A
--     WHERE Album.mainArtist = A.mainArtist
-- ) B, User
-- WHERE Song.albumId = B.albumId AND B.artistId = User.id
-- GROUP BY B.albumId;
