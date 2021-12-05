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


