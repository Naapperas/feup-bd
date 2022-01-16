PRAGMA foreign_keys = ON;

CREATE TRIGGER IF NOT EXISTS remove_podcast_episodes
BEFORE DELETE ON Podcast
BEGIN
    DELETE FROM LikedPodcasts WHERE podcastId = old.id;
    DELETE FROM TypesOfPodcast WHERE podcastId = old.id;
    DELETE FROM LikedPodcastEpisode WHERE podcastId = old.id;
    DELETE FROM PodcastEpisode WHERE podcastId = old.id;
END;