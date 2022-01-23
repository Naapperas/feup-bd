.mode columns
.headers on
.nullvalue NULL

DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS Artist;
DROP TABLE IF EXISTS RankingByMonthlyListeners;
DROP TABLE IF EXISTS Consumer;
DROP TABLE IF EXISTS Concert;
DROP TABLE IF EXISTS GuestArtist;
DROP TABLE IF EXISTS Podcast;
DROP TABLE IF EXISTS PodcastGenre;
DROP TABLE IF EXISTS TypesOfPodcast;
DROP TABLE IF EXISTS PodcastEpisode;
DROP TABLE IF EXISTS LikedPodcasts;
DROP TABLE IF EXISTS LikedPodcastEpisode;
DROP TABLE IF EXISTS Album;
DROP TABLE IF EXISTS Song;
DROP TABLE IF EXISTS Playlist;
DROP TABLE IF EXISTS SongPositionInPlaylist;
DROP TABLE IF EXISTS LikedAlbum;
DROP TABLE IF EXISTS LikedSong;
DROP TABLE IF EXISTS LikedPlaylist;
DROP TABLE IF EXISTS Collaborator;
DROP TABLE IF EXISTS FeaturedArtists;
DROP TABLE IF EXISTS Follows;

--------------------------------------

CREATE TABLE User (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userName TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    verified BOOLEAN DEFAULT FALSE,
    dateOfBirth DATE NOT NULL
);

--------------------------------------

CREATE TABLE Artist (
    id INTEGER REFERENCES User(id),
    about TEXT,
    monthlyListeners INTEGER NOT NULL CHECK (monthlyListeners >= 0),
    CONSTRAINT ARTIST_ID PRIMARY KEY(id)
);

--------------------------------------

CREATE TABLE Consumer (
    id INTEGER REFERENCES User(id),
    paymentPlan TEXT CHECK (paymentPlan IN ('Premium','Free','Duo','Family','Student')) DEFAULT 'Free',
    CONSTRAINT ARTIST_ID PRIMARY KEY(id)
);

--------------------------------------

CREATE TABLE Concert (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    concertDate DATE NOT NULL,
    concertTime TIME NOT NULL,
    place TEXT NOT NULL,
    mainArtist INTEGER REFERENCES Artist(id)
);

--------------------------------------

CREATE TABLE GuestArtist (
    concertID INTEGER REFERENCES Concert(id), 
    artistID INTEGER REFERENCES Artist(id), 
    CONSTRAINT GUEST_ARTIST_ID PRIMARY KEY (concertID, artistID)
);

--------------------------------------

CREATE TABLE Podcast(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    podcastName TEXT NOT NULL,
    podcastDescription TEXT,
    numberOfEpisodes INTEGER NOT NULL CHECK (numberOfEpisodes >= 0)
);

--------------------------------------

CREATE TABLE PodcastGenre (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    genre TEXT NOT NULL UNIQUE CHECK (genre IN ('History','Crime','News and Politics','Comedy','Sport and Leisure','Society and Culture','Educational','Lifestyle','Business and Tech','Arts','Music','Games','Family Friendly'))
);

--------------------------------------

CREATE TABLE TypesOfPodcast(
    podcastId INTEGER REFERENCES Podcast(id), 
    genreId INTEGER REFERENCES PodcastGenre(id),
    CONSTRAINT TypesOfPodcast_ID PRIMARY KEY (podcastId, genreId)
);

--------------------------------------

CREATE TABLE PodcastEpisode (
    podcastId INTEGER REFERENCES Podcast(id),
    episodeNumber INTEGER CHECK (episodeNumber >= 1),
    title TEXT NOT NULL,
    duration TIME NOT NULL,
    episodeDescription TEXT,
    releaseDate DATE NOT NULL,
    CONSTRAINT EPISODE_ID PRIMARY KEY(podcastId, episodeNumber)
);

--------------------------------------

CREATE TABLE LikedPodcasts (
    podcastId INTEGER REFERENCES Podcast(id),
    userId INTEGER REFERENCES User(id),
    CONSTRAINT LIKED_PODCAST_ID PRIMARY KEY (podcastId, userId)
);

--------------------------------------

CREATE TABLE LikedPodcastEpisode (
    podcastId INTEGER,
    episodeNumber INTEGER,
    userId INTEGER REFERENCES User(id),
    CONSTRAINT LIKED_EPISODE_FK FOREIGN KEY (podcastId, episodeNumber) REFERENCES PodcastEpisode(podcastId, episodeNumber),
    CONSTRAINT LIKED_EPISODE_ID PRIMARY KEY (podcastId, episodeNumber, userId)
);

--------------------------------------

CREATE TABLE Album (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    albumName TEXT NOT NULL,
    numberOfSongs INTEGER CHECK (numberOfSongs >= 0) DEFAULT 1,
    duration INTEGER CHECK (duration >= 0),
    releaseYear DATE NOT NULL,
    mainArtist INTEGER REFERENCES Artist(id)
);

--------------------------------------

CREATE TABLE Song (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    songName TEXT NOT NULL,
    duration INTEGER NOT NULL CHECK (duration > 0),
    isExplicit BOOLEAN DEFAULT FALSE,
    genre TEXT NOT NULL CHECK (genre IN ('Rock', 'Pop', 'HipHop', 'Rap', 'Metal', 'Jazz', 'Lo-fi', 'Blues', 'Reggae', 'Indie', 'Clássica')),
    numberOfStreams INTEGER NOT NULL CHECK (numberOfStreams >= 0),
    albumId INTEGER REFERENCES Album(id),
    positionInAlbum INTEGER NOT NULL CHECK (positionInAlbum >= 1)
);

--------------------------------------

CREATE TABLE Playlist (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    playlistName TEXT NOT NULL,
    isPrivate BOOLEAN DEFAULT TRUE,
    numberOfSongs INTEGER CHECK (numberOfSongs >= 0) DEFAULT 0,
    duration INTEGER CHECK (duration >= 0) DEFAULT 0,
    creator INTEGER REFERENCES User(id)
);

--------------------------------------

CREATE TABLE SongPositionInPlaylist (
    songId INTEGER REFERENCES Song(id),
    playlistId INTEGER REFERENCES Playlist(id),
    position INTEGER NOT NULL CHECK (position >= 1),
    CONSTRAINT POSITION_IN_PLAYLIST_ID PRIMARY KEY(songId, playlistId)
);

--------------------------------------

CREATE TABLE LikedAlbum (
    albumId INTEGER REFERENCES Album(id),
    userId INTEGER REFERENCES User(id),
    CONSTRAINT LIKED_ALBUM_ID PRIMARY KEY(albumId, userId)
);

--------------------------------------

CREATE TABLE LikedSong (
    songId INTEGER REFERENCES Song(id),
    userId INTEGER REFERENCES User(id),
    CONSTRAINT LIKED_SONG_ID PRIMARY KEY(songId, userId)
);

--------------------------------------

CREATE TABLE LikedPlaylist (
    playlistId INTEGER REFERENCES Playlist(id),
    userId INTEGER REFERENCES User(id),
    CONSTRAINT LIKED_PLAYLIST_ID PRIMARY KEY(playlistId, userId)
);

--------------------------------------

CREATE TABLE Collaborator (
    playlistId INTEGER REFERENCES Playlist(id),
    userId INTEGER REFERENCES User(id),
    CONSTRAINT COLLABORATOR_ID PRIMARY KEY(playlistId, userId)
);

--------------------------------------

CREATE TABLE FeaturedArtists (
    songId INTEGER REFERENCES Song(id),
    artistId INTEGER REFERENCES Artist(id),
    CONSTRAINT FEATURED_ARTIST_ID PRIMARY KEY(songId, artistId)
);

--------------------------------------

CREATE TABLE Follows (
    UserId1 INTEGER REFERENCES User(id),
    UserId2 INTEGER REFERENCES User(id),
    CONSTRAINT FOLLOW_USER_ID PRIMARY KEY(UserId1, UserId2)
);

--------------------------------------