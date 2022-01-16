-- average number of streams per album

PRAGMA foreign_keys = ON;

SELECT User.userName as artistName, Album.albumName, round(avg(numberOfStreams), 1) as averageListeningTime
FROM Song, Album, User
WHERE Song.albumId = Album.id AND User.id = Album.mainArtist
GROUP BY albumId;