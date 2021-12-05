DROP TABLE IF EXISTS User;
CREATE TABLE User (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userName TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    verified BOOLEAN DEFAULT FALSE,
    dateOfBirth DATE NOT NULL
);

--------------------------------------

DROP TABLE IF EXISTS RankingByMonthlyListeners;
CREATE TABLE RankingByMonthlyListeners (
    monthlyListeners INTEGER PRIMARY KEY CHECK (monthlyListeners >= 0),
    ranking INTEGER NOT NULL CHECK (ranking >= 1)
);

--------------------------------------

DROP TABLE IF EXISTS Artist;
CREATE TABLE Artist (
    id INTEGER REFERENCES User(id),
    about TEXT,
    monthlyListeners INTEGER REFERENCES RankingByMonthlyListeners(monthlyListeners),
    CONSTRAINT ARTIST_ID PRIMARY KEY(id)
);

--------------------------------------

DROP TABLE IF EXISTS Consumer;
CREATE TABLE Consumer (
    id INTEGER REFERENCES User(id),
    paymentPlan TEXT CHECK (paymentPlan IN ("Premium","Free","Duo","Family","Student")) NOT NULL,
    CONSTRAINT ARTIST_ID PRIMARY KEY(id)
);

--------------------------------------

DROP TABLE IF EXISTS Concert;
CREATE TABLE Concert (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    concertDate DATE NOT NULL,
    concertTime TIME NOT NULL,
    place TEXT NOT NULL,
    mainArtist INTEGER REFERENCES Artist(id)
);

--------------------------------------

DROP TABLE IF EXISTS GuestArtist;
CREATE TABLE GuestArtist (
    concertID INTEGER REFERENCES Concert(id), 
    artistID INTEGER REFERENCES Artist(id), 
    CONSTRAINT GUEST_ARTIST_ID PRIMARY KEY (concertID, artistID)
);

--------------------------------------

DROP TABLE IF EXISTS Podcast;
CREATE TABLE Podcast(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    podcastName TEXT NOT NULL,
    podcastDescription TEXT
);

--------------------------------------

DROP TABLE IF EXISTS PodcastGenre;
CREATE TABLE PodcastGenre (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    genre TEXT NOT NULL UNIQUE CHECK (genre IN ("History","Crime","News and Politics","Comedy","Sport and Leisure","Society and Culture","Educational","Lifestyle","Business and Tech","Arts","Music","Games","Family Friendly"))
);

--------------------------------------

DROP TABLE IF EXISTS TypesOfPodcast;
CREATE TABLE TypesOfPodcast(
    podcastId INTEGER REFERENCES Podcast(id), 
    genreId INTEGER REFERENCES PodcastGenre(id),
    CONSTRAINT TypesOfPodcast_ID PRIMARY KEY (podcastId, genreId)
);

--------------------------------------

DROP TABLE IF EXISTS PodcastEpisode;
CREATE TABLE PodcastEpisode (
    podcastId INTEGER REFERENCES Podcast(id),
    episodeNumber INTEGER CHECK (episodeNumber >= 1),
    title TEXT NOT NULL,
    durations TIME NOT NULL,
    episodeDescription TEXT,
    releaseDate DATE NOT NULL,
    CONSTRAINT EPISODE_ID PRIMARY KEY(podcastId, episodeNumber)
);

--------------------------------------

DROP TABLE IF EXISTS LikedPodcasts;
CREATE TABLE LikedPodcasts (
    podcastId INTEGER REFERENCES Podcast(id),
    userId INTEGER REFERENCES User(id),
    CONSTRAINT LIKED_PODCAST_ID PRIMARY KEY (podcastId, userId)
);

--------------------------------------

DROP TABLE IF EXISTS LikedPodcastEpisode;
CREATE TABLE LikedPodcastEpisode (
    episodeId INTEGER REFERENCES PodcastEpisode(id),
    userId INTEGER REFERENCES User(id),
    CONSTRAINT LIKED_EPISODE_ID PRIMARY KEY (episodeId, userId)
);

--------------------------------------

DROP TABLE IF EXISTS Album;
CREATE TABLE Album (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    albumName TEXT NOT NULL,
    numberOfSongs INTEGER NOT NULL CHECK (numberOfSongs >= 1),
    durations TIME NOT NULL CHECK (durations >= 0),
    releaseYear DATE NOT NULL,
    mainArtist INTEGER REFERENCES Artist(id)
);

--------------------------------------

DROP TABLE IF EXISTS Song;
CREATE TABLE Song (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    songName TEXT NOT NULL,
    duration TIME NOT NULL,
    isExplicit BOOLEAN DEFAULT FALSE,
    genre TEXT NOT NULL CHECK (genre IN ("Rock", "Pop", "HipHop", "Rap", "Metal", "Jazz", "Lo-fi", "Blues", "Reggae", "Indie", "Clássica")),
    numberOfStreams INTEGER NOT NULL CHECK (numberOfStreams >= 0),
    releaseYear DATE NOT NULL,
    albumId INTEGER REFERENCES Album(id),
    positionInAlbum INTEGER NOT NULL CHECK (positionInAlbum >= 1)
);

--------------------------------------

DROP TABLE IF EXISTS Playlist;
CREATE TABLE Playlist (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    playlistName TEXT NOT NULL,
    isPrivate BOOLEAN DEFAULT FALSE,
    numberOfSongs INTEGER NOT NULL,
    duration TIME NOT NULL,
    creator INTEGER REFERENCES User(id)
);

--------------------------------------

DROP TABLE IF EXISTS SongPositionInPlaylist;
CREATE TABLE SongPositionInPlaylist (
    songId INTEGER REFERENCES Song(id),
    playlisId INTEGER REFERENCES Playlist(id),
    position INTEGER NOT NULL CHECK (position >= 1),
    CONSTRAINT POSITION_IN_PLAYLIST_ID PRIMARY KEY(songId, playlisId)
);

--------------------------------------

DROP TABLE IF EXISTS LikedAlbum;
CREATE TABLE LikedAlbum (
    albumId INTEGER REFERENCES Album(id),
    userId INTEGER REFERENCES User(id),
    CONSTRAINT LIKED_ALBUM_ID PRIMARY KEY(albumId, userId)
);

--------------------------------------

DROP TABLE IF EXISTS LikedSong;
CREATE TABLE LikedSong (
    songId INTEGER REFERENCES Song(id),
    userId INTEGER REFERENCES User(id),
    CONSTRAINT LIKED_SONG_ID PRIMARY KEY(songId, userId)
);

--------------------------------------

DROP TABLE IF EXISTS LikedPlaylist;
CREATE TABLE LikedPlaylist (
    playlistId INTEGER REFERENCES Playlist(id),
    userId INTEGER REFERENCES User(id),
    CONSTRAINT LIKED_PLAYLIST_ID PRIMARY KEY(playlistId, userId)
);

--------------------------------------

DROP TABLE IF EXISTS Collaborator;
CREATE TABLE Collaborator (
    playlistId INTEGER REFERENCES Playlist(id),
    userId INTEGER REFERENCES User(id),
    CONSTRAINT COLLABORATOR_ID PRIMARY KEY(playlistId, userId)
);

--------------------------------------

DROP TABLE IF EXISTS featuredArtists;
CREATE TABLE FeaturedArtists (
    songId INTEGER REFERENCES Song(id),
    artistId INTEGER REFERENCES Artist(id),
    CONSTRAINT FEATURED_ARTIST_ID PRIMARY KEY(songId, artistId)
);

--------------------------------------