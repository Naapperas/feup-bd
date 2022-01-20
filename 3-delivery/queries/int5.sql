-- songs liked by both premium users and non-premium users

PRAGMA foreign_keys = ON;

.mode columns
.headers on
.nullvalue NULL

SELECT Song.* 
FROM LikedSong, Song, Consumer
WHERE userId = Consumer.id AND songId = Song.id AND paymentPlan = 'Free'
INTERSECT
SELECT Song.*
FROM LikedSong, Song, Consumer
WHERE userId = Consumer.id AND songId = Song.id AND paymentPlan <> 'Free';