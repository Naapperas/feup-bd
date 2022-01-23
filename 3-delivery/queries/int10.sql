-- average age of a playlists' collaborators and creator users

-- for playlist 1

SELECT avg(age) as averageAge
FROM (
    SELECT User.userName, cast(floor((julianday(date("now")) - julianday(dateOfBirth))/365) AS INTEGER) AS age
    FROM Playlist
    JOIN Collaborator ON Collaborator.playlistId = Playlist.id
    JOIN User ON User.id = Collaborator.userId
    WHERE Playlist.id = 1
);