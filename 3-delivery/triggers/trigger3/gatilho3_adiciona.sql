PRAGMA foreign_keys = ON;

CREATE TRIGGER IF NOT EXISTS check_song_genre
BEFORE INSERT ON Song
WHEN new.genre NOT IN ('Rock', 'Pop', 'HipHop', 'Rap', 'Metal', 'Jazz', 'Lo-fi', 'Blues', 'Reggae', 'Indie', 'Clássica')
BEGIN
    SELECT raise(ABORT, "Invalid song genre");
END;