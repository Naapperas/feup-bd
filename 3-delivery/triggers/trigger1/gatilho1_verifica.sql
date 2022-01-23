PRAGMA foreign_keys = ON;

SELECT * FROM Album WHERE id = 4;

INSERT INTO Song VALUES (NULL, 'Panzerkampf', 216, FALSE, 'Metal', 4830710, 4, 12);

SELECT * FROM Album WHERE id = 4;

SELECT * FROM Playlist WHERE id = 1;

INSERT INTO SongPositionInPlaylist VALUES (106, 1, 19);

SELECT * FROM Playlist WHERE id = 1;

SELECT * FROM Podcast WHERE id = 2;

INSERT INTO PodcastEpisode VALUES (2, 2, 'Big Chungis', '05:30:00', 'sample text', '25-12-2025');

SELECT * FROM Podcast WHERE id = 2;