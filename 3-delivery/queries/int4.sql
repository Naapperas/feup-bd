-- average number of streams per album

PRAGMA foreign_keys = ON;

.mode columns
.headers on
.nullvalue NULL

SELECT User.userName as artistName, Album.albumName, round(avg(numberOfStreams), 1) as averageNumberOfStreams
FROM Song, Album, User
WHERE Song.albumId = Album.id AND User.id = Album.mainArtist
GROUP BY albumId;