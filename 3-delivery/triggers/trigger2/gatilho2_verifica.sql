PRAGMA foreign_keys = ON;

SELECT * FROM Podcast;
SELECT * FROM PodcastEpisode;
SELECT * FROM LikedPodcasts;
SELECT * FROM LikedPodcastEpisode;

DELETE FROM Podcast WHERE id = 1;

SELECT * FROM Podcast;
SELECT * FROM PodcastEpisode;
SELECT * FROM LikedPodcasts;
SELECT * FROM LikedPodcastEpisode;
