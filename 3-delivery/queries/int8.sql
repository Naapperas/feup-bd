-- Which concerts took/will take place at a given location

PRAGMA foreign_keys = ON;

.mode columns
.headers on
.nullvalue NULL

-- find out how to add guest artists

SELECT User.userName as mainArtist, Concert.concertDate, Concert.concertTime, Concert.place
FROM Concert 
JOIN Artist ON Concert.mainArtist = Artist.id
JOIN User ON Artist.id = User.id
WHERE place = 'Wembley';