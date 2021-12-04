DROP TABLE IF EXISTS User;
CREATE TABLE User (id INTEGER PRIMARY KEY AUTOINCREMENT, email TEXT UNIQUE NOT NULL, verified BOOLEAN NOT NULL DEFAULT FALSE, dateOfBirth DATE NOT NULL);

--------------------------------------

DROP TABLE IF EXISTS RankingByMonthlyListeners;
CREATE TABLE RankingByMonthlyListeners (monthlyListeners INTEGER PRIMARY KEY CHECK (monthlyListeners >= 0),ranking INTEGER NOT NULL CHECK (ranking >= 1));

--------------------------------------

DROP TABLE IF EXISTS Artist;
CREATE TABLE Artist (id INTEGER, about TEXT, monthlyListeners INTEGER REFERENCES RankingByMonthlyListeners(monthlyListeners), CONSTRAINT ARTIST_ID id PRIMARY KEY REFERENCES User(id));

--------------------------------------

DROP TABLE IF EXISTS Consumer;
CREATE TABLE Consumer (id INTEGER, paymentPlan TEXT CHECK (paymentPlan IN ("Rock", "Pop", "HipHop", "Rap", "Metal", "Jazz", "Lo-fi", "Blues", "Reggae", "Indie", "Clássica")) NOT NULL, CONSTRAINT ARTIST_ID id PRIMARY KEY REFERENCES User(id));

--------------------------------------

DROP TABLE IF EXISTS Concert;
CREATE TABLE Concert (id INTEGER PRIMARY KEY AUTOINCREMENT, concertDate DATE NOT NULL, concertTime TIME NOT NULL, place TEXT NOT NULL, mainArtist INTEGER REFERENCES Artist(id));

--------------------------------------

DROP TABLE IF EXISTS GuestArtist;
CREATE TABLE GuestArtist (concertID INTEGER REFERENCES Concert(id), artistID INTEGER REFERENCES Artist(id), CONSTRAINT GUEST_ARTIST_ID PRIMARY KEY (concertID, artistID));
