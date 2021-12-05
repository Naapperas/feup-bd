PRAGMA foreign_keys = ON;

INSERT INTO User VALUES (1, "Gonçalo Marques", "goncalo@gmail.com", FALSE, "01-09-2002");
INSERT INTO Consumer VALUES (1, "Free");

INSERT INTO User VALUES (2, "Nuno Pereira", "nuno@gmail.com", FALSE, "20-02-2002");
INSERT INTO Consumer VALUES (2, "Student");

INSERT INTO User VALUES (3, "Zé Gaspar", "ze@gmail.com", FALSE, "13-08-2002");
INSERT INTO Consumer VALUES (3, "Premium");

INSERT INTO User VALUES (4, "Zé Castro", "castro@gmail.com", FALSE, "21-05-2002");
INSERT INTO Consumer VALUES (4, "Family");

INSERT INTO User VALUES (5, "Maria", "maria@gmail.com", FALSE, "23-01-2003");
INSERT INTO Consumer VALUES (5, "Duo");

INSERT INTO User VALUES (6, "Pedro Sousa", "pesousa@fe.up.pt", FALSE, "16-01-1985");
INSERT INTO Consumer VALUES (6, "Duo");

INSERT INTO User VALUES (7, "Fearless Records", "admin@fr.com", TRUE, "09-12-1970");
INSERT INTO Consumer VALUES (7, "Premium");

INSERT INTO User VALUES (8, "Ana", "ana@hotmail.com", FALSE, "23-08-2005");
INSERT INTO Consumer VALUES (8, "Free");

INSERT INTO User VALUES (9, "Mariana", "mari@gmail.com", FALSE, "08-08-2002");
INSERT INTO Consumer VALUES (9, "Student");

INSERT INTO User VALUES (10, "Guilherme", "gui@edu.fe.up.pt", FALSE, "16-12-2002");
INSERT INTO Consumer VALUES (10, "Family");

--------------------------------

INSERT INTO User VALUES (11, "Sabaton", "sabaton@gmail.com", TRUE, "05-10-1999");
INSERT INTO RankingByMonthlyListeners VALUES (2626219, 7);
INSERT INTO Artist VALUES (11, "Swedish Power Metal", 2626219);

INSERT INTO User VALUES (12, "Muse", "muse@muse.muse", TRUE, "01-01-1994");
INSERT INTO RankingByMonthlyListeners VALUES (10703319, 5);
INSERT INTO Artist VALUES (12, "British Rock", 10703319);

INSERT INTO User VALUES (13, "Queen", "frederico.mercurio@gmail.com", TRUE, "20-02-1970");
INSERT INTO RankingByMonthlyListeners VALUES (39181301, 2);
INSERT INTO Artist VALUES (13, "British", 39181301);

INSERT INTO User VALUES (14, "Call Me Alice", "cma@edu.fe.up.pt", FALSE, "25-04-2015");
INSERT INTO RankingByMonthlyListeners VALUES (202, 10);
INSERT INTO Artist VALUES (14, NULL, 202);

INSERT INTO User VALUES (15, "Quim Barreiros", "quim@gmail.com", TRUE, "19-06-1947");
INSERT INTO RankingByMonthlyListeners VALUES (76375, 9);
INSERT INTO Artist VALUES (15, "Pimba", 76375);

INSERT INTO User VALUES (16, "Xutos e Pontapés", "xutos@mail.pt", TRUE, "02-07-1980");
INSERT INTO RankingByMonthlyListeners VALUES (155207, 8);
INSERT INTO Artist VALUES (16, "Contentores", 155207);

INSERT INTO User VALUES (17, "Nirvana", "kurt.cubano@gmail.com", TRUE, "23-03-1987");
INSERT INTO RankingByMonthlyListeners VALUES (20608408, 3);
INSERT INTO Artist VALUES (17, "Grunge American band", 20608408);

INSERT INTO User VALUES (18, "Foo Fighters", "baterista.dos.nirvana@yahoo.com", TRUE, "24-09-1994");
INSERT INTO RankingByMonthlyListeners VALUES (13073505, 4);
INSERT INTO Artist VALUES (18, "Drums", 13073505);

INSERT INTO User VALUES (19, "Rise Against", "ra@gmail.com", TRUE, "20-02-1999");
INSERT INTO RankingByMonthlyListeners VALUES (5791016, 6);
INSERT INTO Artist VALUES (19, "Who ?", 5791016);

INSERT INTO User VALUES (20, "Olivia Rodrigo", "xoxo@facebook.pt", TRUE, "20-03-2002");
INSERT INTO RankingByMonthlyListeners VALUES (44544112, 1);
INSERT INTO Artist VALUES (20, "'I love her' - random fan", 44544112);

--------------------------------

INSERT INTO Concert VALUES (1, "01-01-1990", "15:37:00", "America", 19);

INSERT INTO Concert VALUES (2, "05-12-2021", "16:00:00", "Gondomar", 14);
INSERT INTO GuestArtist VALUES (2, 16);

INSERT INTO Concert VALUES (3, "25-04-1974", "23:59:00", "Garage", 17);
INSERT INTO GuestArtist VALUES (3, 18);
INSERT INTO GuestArtist VALUES (3, 13);

INSERT INTO Concert VALUES (4, "20-02-2022", "15:00:00", "Minha Casa", 20);
INSERT INTO GuestArtist VALUES (4, 11);

INSERT INTO Concert VALUES (5, "25-12-2012", "22:00:00", "Wembley", 12);

--------------------------------

INSERT INTO Podcast VALUES (1, "The Jordan B. Peterson Podcast", "something something Dr. Jordan Peterson libtards something something");
INSERT INTO Podcast VALUES (2, "Big Chungus", NULL);

--------------------------------

INSERT INTO PodcastGenre VALUES (1, "History");
INSERT INTO PodcastGenre VALUES (2, "Crime");
INSERT INTO PodcastGenre VALUES (3, "News and Politics");
INSERT INTO PodcastGenre VALUES (4, "Comedy");
INSERT INTO PodcastGenre VALUES (5, "Sport and Leisure");
INSERT INTO PodcastGenre VALUES (6, "Society and Culture");
INSERT INTO PodcastGenre VALUES (7, "Educational");
INSERT INTO PodcastGenre VALUES (8, "Lifestyle");
INSERT INTO PodcastGenre VALUES (9, "Business and Tech");
INSERT INTO PodcastGenre VALUES (10, "Arts");
INSERT INTO PodcastGenre VALUES (11, "Music");
INSERT INTO PodcastGenre VALUES (12, "Games");
INSERT INTO PodcastGenre VALUES (13, "Family Friendly");

--------------------------------

INSERT INTO TypesOfPodcast VALUES (1, 3);
INSERT INTO TypesOfPodcast VALUES (1, 6);
INSERT INTO TypesOfPodcast VALUES (1, 9);

INSERT INTO TypesOfPodcast VALUES (2, 1);
INSERT INTO TypesOfPodcast VALUES (2, 2);
INSERT INTO TypesOfPodcast VALUES (2, 3);
INSERT INTO TypesOfPodcast VALUES (2, 4);
INSERT INTO TypesOfPodcast VALUES (2, 5);
INSERT INTO TypesOfPodcast VALUES (2, 6);
INSERT INTO TypesOfPodcast VALUES (2, 7);
INSERT INTO TypesOfPodcast VALUES (2, 8);
INSERT INTO TypesOfPodcast VALUES (2, 9);
INSERT INTO TypesOfPodcast VALUES (2, 10);
INSERT INTO TypesOfPodcast VALUES (2, 11);
INSERT INTO TypesOfPodcast VALUES (2, 12);
INSERT INTO TypesOfPodcast VALUES (2, 13);

--------------------------------

INSERT INTO PodcastEpisode VALUES (1, 1, "Reality and the Sacred", "00:58:18", "Dr. Peterson describes", "01-12-2016");
INSERT INTO PodcastEpisode VALUES (1, 2, "Tragedy vs. Evil", "00:43:40", "Dr. Peterson talks", "16-12-2016");
INSERT INTO PodcastEpisode VALUES (1, 3, "The Necessity Of Virtue", "00:52:02", "Dr. Peterson speaks", "31-12-2016");
INSERT INTO PodcastEpisode VALUES (1, 5, "The Psychology of Redemption", "00:47:29", "Dr. Peterson tells", "01-01-2017");

INSERT INTO PodcastEpisode VALUES (2, 1, "Big Chungi", "05:00:00", "Our lord and savior Big Chungus releases his wisdom upon us mere mortals", "25-12-2021");

--------------------------------

INSERT INTO LikedPodcasts VALUES (1, 4);
INSERT INTO LikedPodcasts VALUES (1, 6);

INSERT INTO LikedPodcasts VALUES (2, 7);

--------------------------------

INSERT INTO LikedPodcastEpisode VALUES (1, 2, 8);
INSERT INTO LikedPodcastEpisode VALUES (1, 2, 4);
INSERT INTO LikedPodcastEpisode VALUES (1, 5, 7);

INSERT INTO LikedPodcastEpisode VALUES (2, 1, 1);
INSERT INTO LikedPodcastEpisode VALUES (2, 1, 2);
INSERT INTO LikedPodcastEpisode VALUES (2, 1, 3);

--------------------------------

INSERT INTO Album VALUES (1, "Sour", 5, "00:16:56", "2021", 20);
INSERT INTO Song VALUES (1, "good 4 u", "00:02:58", TRUE, "Pop", 1098075334, "2021", 1, 1);
INSERT INTO Song VALUES (2, "traitor", "00:03:49", TRUE, "Pop", 520740950, "2021", 1, 2);
INSERT INTO Song VALUES (3, "drivers license", "00:04:02", TRUE, "Pop", 1190809499, "2021", 1, 3);
INSERT INTO Song VALUES (4, "deja vu", "00:03:35", TRUE, "Pop", 654698423, "2021", 1, 4);
INSERT INTO Song VALUES (5, "favorite crime", "00:02:32", TRUE, "Pop", 137196234, "2021", 1, 5);

INSERT INTO Album VALUES (2, "Simulation Theory", 3, "00:11:48", "2018", 12);
INSERT INTO Song VALUES (6,"algorithm", "00:04:05", FALSE, "Rock", 20689183, "2018", 2, 1);
INSERT INTO Song VALUES (7,"pressure", "00:03:55", FALSE, "Rock", 78816074, "2018", 2, 2);
INSERT INTO Song VALUES (8,"dig down", "00:03:48", FALSE, "Rock", 53881508, "2018", 2, 3);

INSERT INTO Album VALUES (3, "A Cabritinha", 1, "00:03:48", "2004", 15);
INSERT INTO Song VALUES (9, "A Cabritinha","00:03:48",FALSE, "Pop", 2852020, "2004", 3, 1);

INSERT INTO Album VALUES (4, "The Great War", 4, "00:14:38", "2019", 11);
INSERT INTO Song VALUES (10, "The Red Baron", "00:03:22", FALSE, "Metal", 39753992, "2019", 4,1);
INSERT INTO Song VALUES (11, "Fields of Verdun", "00:03:17", FALSE, "Metal", 35990023, "2019", 4,2);
INSERT INTO Song VALUES (12, "Great War", "00:04:28", FALSE, "Metal", 30153073, "2019", 4,3);
INSERT INTO Song VALUES (13, "82nd All the Way", "00:03:31", FALSE, "Metal", 22271563, "2019", 4,4);

INSERT INTO Album VALUES (5, "Broken Glass", 1, "00:03:37", "2020", 14);
INSERT INTO Song VALUES (14, "Broken Glass", "00:03:37", FALSE, "Indie", 4783, "2020", 5, 1);

INSERT INTO Album VALUES (6, "Endgame", 3, "00:11:16", "2011", 19);
INSERT INTO Song VALUES (15, "Make It Stop", "00:03:54", FALSE, "Rock",54911809, "2011", 6, 1);
INSERT INTO Song VALUES (16, "Satellite", "00:03:58", FALSE, "Rock",147642252, "2011", 6, 2);
INSERT INTO Song VALUES (17, "Endgame", "00:03:24", FALSE, "Rock",10105051, "2011", 6, 3);

INSERT INTO Album VALUES (7, "A Night At The Opera", 3, "00:13:01", "1975", 13);
INSERT INTO Song VALUES (18, "Bohemian Rhapsody", "00:05:54", FALSE, "Rock",1664659500, "1975", 7, 1);
INSERT INTO Song VALUES (19, "Love of my Life", "00:03:37", FALSE, "Rock",293321939, "1975", 7, 2);
INSERT INTO Song VALUES (20, "'39", "00:03:30", FALSE, "Rock",48172668, "1975", 7, 3);

INSERT INTO Album VALUES (8, "Smells Like Teen Spirit", 1, "00:05:01", "1991", 17);
INSERT INTO Song VALUES (21, "Smells Like Teen Spirit", "00:05:01", FALSE, "Rock", 1141145309, "1991", 8, 1);

INSERT INTO Album VALUES (9, "The Pretender", 1, "00:04:29", "2007", 18);
INSERT INTO Song VALUES (22, "The Pretender", "00:04:29", FALSE, "Rock", 468751521, "2007", 9, 1);

INSERT INTO Album VALUES (10, "Circo de Feras", 4, "00:16:09", "1987", 16);
INSERT INTO Song VALUES (23, "Contentores", "00:03:51", FALSE, "Rock", 3515421, "1987", 10, 1);
INSERT INTO Song VALUES (24, "Circo de Feras", "00:03:53", FALSE, "Rock", 1198802, "1987", 10, 2);
INSERT INTO Song VALUES (25, "Não Sou O Único", "00:03:38", FALSE, "Rock", 1941543, "1987", 10, 3);
INSERT INTO Song VALUES (26, "Vida Malvada", "00:04:47", FALSE, "Rock", 375219, "1987", 10, 4);

--------------------------------

INSERT INTO Playlist VALUES (1, "Bangers", FALSE, 8,"00:33:50", 1);
INSERT INTO SongPositionInPlaylist VALUES (18, 1, 1);
INSERT INTO SongPositionInPlaylist VALUES (10, 1, 2);
INSERT INTO SongPositionInPlaylist VALUES (11, 1, 3);
INSERT INTO SongPositionInPlaylist VALUES (12, 1, 4);
INSERT INTO SongPositionInPlaylist VALUES (13, 1, 5);
INSERT INTO SongPositionInPlaylist VALUES (9, 1, 6);
INSERT INTO SongPositionInPlaylist VALUES (22, 1, 7);
INSERT INTO SongPositionInPlaylist VALUES (21, 1, 8);

INSERT INTO Playlist VALUES (2, "Smol Chungus", TRUE, 1, "00:05:01", 2);
INSERT INTO SongPositionInPlaylist VALUES (21, 2, 1);

--------------------------------

INSERT INTO LikedAlbum VALUES (1, 2);
INSERT INTO LikedAlbum VALUES (4, 2);
INSERT INTO LikedAlbum VALUES (4, 1);
INSERT INTO LikedAlbum VALUES (8, 1);
INSERT INTO LikedAlbum VALUES (1, 20);

--------------------------------

INSERT INTO LikedSong VALUES (10, 1);
INSERT INTO LikedSong VALUES (10, 2);
INSERT INTO LikedSong VALUES (4, 4);
INSERT INTO LikedSong VALUES (6, 3);
INSERT INTO LikedSong VALUES (18, 6);

--------------------------------

INSERT INTO LikedPlaylist VALUES (1, 1);
INSERT INTO LikedPlaylist VALUES (1, 2);
INSERT INTO LikedPlaylist VALUES (1, 3);
INSERT INTO LikedPlaylist VALUES (1, 4);
INSERT INTO LikedPlaylist VALUES (1, 5);
INSERT INTO LikedPlaylist VALUES (1, 6);
INSERT INTO LikedPlaylist VALUES (1, 7);
INSERT INTO LikedPlaylist VALUES (1, 8);
INSERT INTO LikedPlaylist VALUES (1, 9);
INSERT INTO LikedPlaylist VALUES (1, 10);

INSERT INTO LikedPlaylist VALUES (2, 1);
INSERT INTO LikedPlaylist VALUES (2, 2);

--------------------------------

INSERT INTO Collaborator VALUES (1, 2);
INSERT INTO Collaborator VALUES (2, 1);
INSERT INTO Collaborator VALUES (1,3);

--------------------------------

INSERT INTO FeaturedArtists VALUES (10, 15);
INSERT INTO FeaturedArtists VALUES (21, 18);
