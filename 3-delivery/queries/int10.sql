-- average age of a playlists' collaborators and creator users

PRAGMA foreign_keys = ON;

.mode columns
.headers on
.nullvalue NULL

SELECT P.playlistName, avg(cast(floor((julianday(date("now")) - julianday(dateOfBirth))/365) AS INTEGER)) AS averageCollaboratorAge
FROM Playlist P
JOIN Collaborator ON Collaborator.playlistId = P.id
JOIN User ON User.id = Collaborator.userId
GROUP BY playlistName;
