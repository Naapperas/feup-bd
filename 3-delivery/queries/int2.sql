-- artist ranking

PRAGMA foreign_keys = ON;

SELECT 
    ROW_NUMBER () OVER ( 
        ORDER BY monthlyListeners DESC
    ) ranking,
    userName AS name
FROM User, Artist
WHERE User.id = Artist.id;