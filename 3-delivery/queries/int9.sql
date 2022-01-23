-- avreage time between podcast episodes

PRAGMA foreign_keys = ON;

.mode columns
.headers on
.nullvalue NULL

-- easy version

-- SELECT (julianday(latest.releaseDate) - julianday(first.releaseDate)) / Podcast.numberOfEpisodes AS averageNumberOfDaysBetweenEpisodes
-- FROM Podcast,
-- (
--     SELECT releaseDate
--     FROM PodcastEpisode
--     WHERE podcastId = 1
--     ORDER BY releaseDate DESC
--     LIMIT 1
-- ) latest, (
--     SELECT releaseDate 
--     FROM PodcastEpisode
--     WHERE podcastId = 1
--     ORDER BY releaseDate
--     LIMIT 1
-- ) first
-- WHERE Podcast.id = 1;
-- on current version of povoar.sql: 7.75

-- hard version

DROP VIEW IF EXISTS FirstEps;
DROP VIEW IF EXISTS LastEps;

CREATE VIEW IF NOT EXISTS FirstEps AS
SELECT ROW_NUMBER() OVER (ORDER BY episodeNumber) AS rownum, *
FROM PodcastEpisode
WHERE podcastId = 1
LIMIT (SELECT numberOfEpisodes-1 FROM Podcast WHERE id = 1);

CREATE VIEW IF NOT EXISTS LastEps AS
SELECT ROW_NUMBER() OVER (ORDER BY episodeNumber) AS rownum, *
FROM (
    SELECT *
    FROM PodcastEpisode
    WHERE podcastId = 1
    LIMIT 1, (SELECT numberOfEpisodes FROM Podcast WHERE id = 1)
);

SELECT round(avg(julianday("now") - julianday("then")), 2) AS averageNumberOfDaysBetweenEpisodes
FROM (
    SELECT A.releaseDate AS "then", B.releaseDate AS "now"
    FROM FirstEps A JOIN LastEps B ON A.rownum = B.rownum
);
-- on current version of povoar.sql: 10.33