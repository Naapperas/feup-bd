PRAGMA foreign_keys = ON;

CREATE TRIGGER IF NOT EXISTS update_album_duration
AFTER INSERT ON Song
BEGIN
    UPDATE Album SET duration = duration + new.duration, numberOfSongs = numberOfSongs + 1 WHERE Album.id = new.albumId;
END;

CREATE TRIGGER IF NOT EXISTS increase_playlist_duration
AFTER INSERT ON SongPositionInPlaylist
BEGIN
    UPDATE Playlist 
    SET duration = Playlist.duration + (SELECT duration FROM Song WHERE Song.id = new.songId), numberOfSongs = numberOfSongs + 1
    WHERE Playlist.id = new.playlistId;
END;

CREATE TRIGGER IF NOT EXISTS increase_podcast_number_of_episodes
AFTER INSERT ON PodcastEpisode
BEGIN
    UPDATE Podcast 
    SET numberOfEpisodes = numberOfEpisodes + 1
    WHERE Podcast.id = new.podcastId;
END;

CREATE TRIGGER IF NOT EXISTS decrease_podcast_number_of_episodes
AFTER DELETE ON PodcastEpisode
BEGIN
    UPDATE Podcast 
    SET numberOfEpisodes = numberOfEpisodes - 1
    WHERE Podcast.id = new.podcastId;
END;

CREATE TRIGGER IF NOT EXISTS decrease_playlist_duration
AFTER DELETE ON SongPositionInPlaylist
BEGIN
    UPDATE Playlist 
    SET duration = Playlist.duration - (SELECT duration FROM Song WHERE Song.id = new.songId), numberOfSongs = numberOfSongs - 1
    WHERE Playlist.id = new.playlistId;
END;
