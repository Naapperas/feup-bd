-- artist ranking

PRAGMA foreign_keys = ON;

.mode columns
.headers on
.nullvalue NULL

SELECT 
    ROW_NUMBER () OVER ( 
        ORDER BY monthlyListeners DESC
    ) ranking,
    userName AS name
FROM 
User JOIN Artist
ON User.id = Artist.id;