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
INSERT INTO RankingByMonthlyListeners VALUES (202, 12);
INSERT INTO Artist VALUES (14, NULL, 202);

INSERT INTO User VALUES (15, "Quim Barreiros", "quim@gmail.com", TRUE, "19-06-1947");
INSERT INTO RankingByMonthlyListeners VALUES (76375, 10);
INSERT INTO Artist VALUES (15, "Pimba", 76375);

INSERT INTO User VALUES (16, "Xutos e Pontapés", "xutos@mail.pt", TRUE, "02-07-1980");
INSERT INTO RankingByMonthlyListeners VALUES (155207, 9);
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

INSERT INTO User VALUES (21, "Toy", "voucantarvoudançar@gmail.com", TRUE, "10-02-1963");
INSERT INTO RankingByMonthlyListeners VALUES (65914, 11);
INSERT INTO Artist VALUES (21, "Vou mh mh até me cansar", 65914);

INSERT INTO User VALUES (22, "Trivium", "Trivum@hotmail.com", TRUE, "04-10-1999");
INSERT INTO RankingByMonthlyListeners VALUES (1856614, 8);
INSERT INTO Artist VALUES (22, NULL, 65914);

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

INSERT INTO Concert VALUES (6, "04-07-2019", "19:00:00", "Estádio do Restelo", 22);
INSERT INTO GuestArtist VALUES (6, 21);

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

INSERT INTO Album VALUES (1, "Sour", 11, "00:34:46", "2021", 20);
INSERT INTO Song VALUES (1, "brutal", "00:02:23", TRUE, "Pop", 262424795, 1, 1);
INSERT INTO Song VALUES (2, "traitor", "00:03:49", FALSE, "Pop", 520740950, 1, 2);
INSERT INTO Song VALUES (3, "drivers license", "00:04:02", TRUE, "Pop", 1190809499, 1, 3);
INSERT INTO Song VALUES (4, "1 step forward, 3 steps back", "00:02:43", TRUE, "Pop",168517109, 1, 4);
INSERT INTO Song VALUES (5, "deja vu", "00:03:35", TRUE, "Pop", 654698423, 1, 5);
INSERT INTO Song VALUES (6, "good 4 u", "00:02:58", TRUE, "Pop", 1098075334, 1, 6);
INSERT INTO Song VALUES (7, "enough for you", "00:03:22", FALSE, "Pop", 191431308, 1, 7);
INSERT INTO Song VALUES (8, "happier", "00:02:55", TRUE, "Pop", 379280079, 1, 8);
INSERT INTO Song VALUES (9, "jealousy,jealousy", "00:02:53", FALSE, "Pop", 288466335, 1, 9);
INSERT INTO Song VALUES (10, "favorite crime", "00:02:32", FALSE, "Pop", 137196234, 1, 10);
INSERT INTO Song VALUES (11, "hope ur ok", "00:03:29", FALSE, "Pop", 137486281, 1, 11);


INSERT INTO Album VALUES (2, "Simulation Theory", 11, "00:42:02", "2018", 12);
INSERT INTO Song VALUES (12,"Algorithm", "00:04:05", FALSE, "Rock", 20689183, 2, 1);
INSERT INTO Song VALUES (13, "The Dark Side", "00:03:47", FALSE, "Rock", 42610124, 2, 2);
INSERT INTO Song VALUES (14,"Pressure", "00:03:55", FALSE, "Rock", 78816074, 2, 3);
INSERT INTO Song VALUES (15, "Propaganda", "00:03:00", FALSE, "Rock", 17312388, 2, 4);
INSERT INTO Song VALUES (16, "Break It to Me", "00:03:37", FALSE, "Rock", 13712317, 2, 5);
INSERT INTO Song VALUES (17, "Something Human", "00:03:46", FALSE, "Rock", 36004014, 2, 6);
INSERT INTO Song VALUES (18, "Thought Contagion", "00:03:26", FALSE, "Rock", 62583068, 2 , 7);
INSERT INTO Song VALUES (19, "Get up and Fight", "00:04:04", FALSE, "Rock", 12081230, 2, 8);
INSERT INTO Song VALUES (20, "Blockades", "00:03:50", FALSE, "Rock", 11780509, 2, 9);
INSERT INTO Song VALUES (21,"Dig Down", "00:03:48", FALSE, "Rock", 53881508, 2, 10);
INSERT INTO Song VALUES (22, "The Void", "00:04:44", FALSE, "Rock", 9934881, 2, 11);


INSERT INTO Album VALUES (3, "A Cabritinha", 1, "00:03:48", "2004", 15);
INSERT INTO Song VALUES (23, "A Cabritinha","00:03:48",FALSE, "Pop", 2852020, 3, 1);


INSERT INTO Album VALUES (4, "The Great War", 11, "00:38:28", "2019", 11);
INSERT INTO Song VALUES (24, "The Future of Warfare", "00:03:26", FALSE, "Metal", 12594510, 4, 1);
INSERT INTO Song VALUES (25, "Seven Pillars of Wisdom", "00:03:02", FALSE, "Metal", 20785219,4, 2);
INSERT INTO Song VALUES (26, "82nd All the Way", "00:03:31", FALSE, "Metal", 22271563, 4,3);
INSERT INTO Song VALUES (27, "The Attack of the Dead Men", "00:03:55", FALSE, "Metal", 29938858, 4, 4);
INSERT INTO Song VALUES (28, "Devil Dogs", "00:03:17", FALSE, "Metal", 14527864, 4, 5);
INSERT INTO Song VALUES (29, "The Red Baron", "00:03:22", FALSE, "Metal", 39753992, 4,6);
INSERT INTO Song VALUES (30, "Great War", "00:04:28", FALSE, "Metal", 30153073, 4,7);
INSERT INTO Song VALUES (31, "A Ghost in the Trenches", "00:03:25", FALSE, "Metal", 10305548, 4, 8);
INSERT INTO Song VALUES (32, "Fields of Verdun", "00:03:17", FALSE, "Metal", 35990023, 4,9);
INSERT INTO Song VALUES (33, "The End of the War to End All Wars", "00:04:45", FALSE, "Metal",7113924, 4, 10);
INSERT INTO Song VALUES (34, "In Flanders Fields", "00:01:56", FALSE, "Metal", 4830710, 4, 11);



INSERT INTO Album VALUES (5, "Broken Glass", 1, "00:03:37", "2020", 14);
INSERT INTO Song VALUES (35, "Broken Glass", "00:03:37", FALSE, "Indie", 4783, 5, 1);


INSERT INTO Album VALUES (6, "Endgame", 12, "00:46:05", "2011", 19);
INSERT INTO Song VALUES (36, "Architects", "00:03:42", FALSE, "Rock", 22028374, 6, 1);
INSERT INTO Song VALUES (37, "Help Is On The Way", "00:03:57", FALSE, "Rock", 45502912, 6, 2);
INSERT INTO Song VALUES (38, "Make It Stop(September's Children)", "00:03:54", FALSE, "Rock",54911809, 6, 3);
INSERT INTO Song VALUES (39, "Disparity By Design", "00:03:48", FALSE, "Rock", 9485152, 6, 4);
INSERT INTO Song VALUES (40, "Satellite", "00:03:58", FALSE, "Rock",147642252, 6, 5);
INSERT INTO Song VALUES (41, "Midnight Hands", "00:04:17", FALSE, "Rock", 9087046, 6, 6);
INSERT INTO Song VALUES (42, "Survivor Guilt", "00:03:59", FALSE, "Rock", 12522456, 6, 7);
INSERT INTO Song VALUES (43, "Broken Mirrors", "00:03:54", FALSE, "Rock", 9399696, 6, 8);
INSERT INTO Song VALUES (44, "Wait For Me", "00:03:39", FALSE, "Rock", 11741955, 6, 9);
INSERT INTO Song VALUES (45, "A Gentlemen's Coup", "00:03:46", FALSE, "Rock", 8858463, 6, 10);
INSERT INTO Song VALUES (46, "This Is Letting Go", "00:03:41", FALSE, "Rock", 15933423, 6, 11);
INSERT INTO Song VALUES (47, "Endgame", "00:03:24", FALSE, "Rock",10105051, 6, 12);


INSERT INTO Album VALUES (7, "A Night At The Opera", 12, "00:43:05", "1975", 13);
INSERT INTO Song VALUES (48, "Death Om Two Legs", "00:03:43", FALSE, "Rock", 40072359, 7, 1);
INSERT INTO Song VALUES (49, "Lazing On A Sunday Afternoon", "00:01:07", FALSE, "Rock", 27642189, 7, 2);
INSERT INTO Song VALUES (50, "I'm In Love With My Car", "00:03:04", FALSE, "Rock", 16479030, 7, 3);
INSERT INTO Song VALUES (51, "You're My Best Friend", "00:02:50", FALSE, "Rock", 212451576, 7, 4);
INSERT INTO Song VALUES (52, "'39", "00:03:30", FALSE, "Rock",48172668, 7, 5);
INSERT INTO Song VALUES (53, "Sweet Lady", "00:04:02", FALSE, "Rock", 8033683, 7, 6);
INSERT INTO Song VALUES (54, "Seaside Rendezvous", "00:02:14", FALSE, "Rock", 12625273, 7, 7);
INSERT INTO Song VALUES (55, "The Prophet's Song", "00:08:20", FALSE, "Rock", 10129464, 7, 8);
INSERT INTO Song VALUES (56, "Love of my Life", "00:03:37", FALSE, "Rock",293321939, 7, 9);
INSERT INTO Song VALUES (57, "Good Company", "00:03:23", FALSE, "Rock", 8441159, 7, 10);
INSERT INTO Song VALUES (58, "Bohemian Rhapsody", "00:05:54", FALSE, "Rock",1664659500, 7, 11);
INSERT INTO Song VALUES (59, "God Save The Queen", "00:01:15", FALSE, "Rock", 10241135, 7, 12);


INSERT INTO Album VALUES (8, "Nevermind", 13, "00:49:15", "1991", 17);
INSERT INTO Song VALUES (60, "Smells Like Teen Spirit", "00:05:01", FALSE, "Rock", 1141145309, 8, 1);
INSERT INTO Song VALUES (61, "In Bloom", "00:04:15", FALSE, "Rock", 184278940, 8, 2);
INSERT INTO Song VALUES (62, "Come As You Are", "00:03:38", FALSE, "Rock", 695883998, 8, 3);
INSERT INTO Song VALUES (63, "Breed", "00:03:04", FALSE, "Rock", 74776760, 8, 4);
INSERT INTO Song VALUES (64, "Lithium", "00:04:17", FALSE, "Rock", 360224271, 8, 5);
INSERT INTO Song VALUES (65, "Polly", "00:02:53", FALSE, "Rock", 79095508, 8, 6);
INSERT INTO Song VALUES (66, "Territorial Pissings", "00:02:22", FALSE, "Rock",52876620, 8 , 7);
INSERT INTO Song VALUES (67, "Drain You", "00:03:43", FALSE, "Rock", 88138574, 8, 8);
INSERT INTO Song VALUES (68, "Lounge Act", "00:02:36", TRUE, "Rock", 54566458, 8, 9);
INSERT INTO Song VALUES (69, "Stay Away", "00:03:31", FALSE, "Rock", 50175712, 8, 10);
INSERT INTO Song VALUES (70, "On A Plain", "00:03:14", FALSE, "Rock", 40604849, 8, 11);
INSERT INTO Song VALUES (71, "Something In The Way", "00:03:52", FALSE, "Rock", 92270021, 8, 12);
INSERT INTO Song VALUES (72, "Endless, Nameless", "00:06:43", FALSE, "Rock", 20114059, 8, 13);


INSERT INTO Album VALUES (9, "Echoes, Silence, Patience & Grace", 12, "00:51:12", "2007", 18);
INSERT INTO Song VALUES (73, "The Pretender", "00:04:29", FALSE, "Rock", 468751521, 9, 1);
INSERT INTO Song VALUES (74, "Let It Die", "00:04:04", FALSE, "Rock", 34621720, 9, 2);
INSERT INTO Song VALUES (75, "Erase/Replace", "00:04:13", FALSE, "Rock", 101965076, 9, 3);
INSERT INTO Song VALUES (76, "Long Road To Ruin", "00:03:44", FALSE, "Rock", 48661266, 9, 4);
INSERT INTO Song VALUES (77, "Come Alive", "00:05:10", FALSE, "Rock", 20626072, 9, 5);
INSERT INTO Song VALUES (78, "Stranger Things Have Happened", "00:05:21", FALSE, "Rock", 30341165, 9, 6);
INSERT INTO Song VALUES (79, "Cheer Up, Boys (Your Make Up Is Running)", "00:03:41", FALSE, "Rock", 8635089, 9, 7);
INSERT INTO Song VALUES (80, "Summer's End", "00:04:37", FALSE, "Rock", 9062072, 9, 8);
INSERT INTO Song VALUES (81, "Ballad Of The Beaconsfield Miners", "00:02:32", FALSE, "Rock", 6735760, 9, 9);
INSERT INTO Song VALUES (82, "Statues", "00:03:47", FALSE, "Rock", 7324793, 9, 10);
INSERT INTO Song VALUES (83, "But, Honestly", "00:04:35", FALSE, "Rock", 10297750, 9, 11);
INSERT INTO Song VALUES (84, "Home", "00:04:53", FALSE, "Rock", 22786095, 9, 12);


INSERT INTO Album VALUES (10, "Circo de Feras", 9, "00:34:01", "1987", 16);
INSERT INTO Song VALUES (85, "Contentores", "00:03:51", FALSE, "Rock", 3515421, 10, 1);
INSERT INTO Song VALUES (86, "Sai Prá Rua", "00:03:04", FALSE, "Rock", 63235, 10, 2);
INSERT INTO Song VALUES (87, "Pensão", "00:03:59", FALSE, "Rock", 31146, 10, 3);
INSERT INTO Song VALUES (88, "Desemprego", "00:03:41", FALSE, "Rock", 25998, 10, 4);
INSERT INTO Song VALUES (89, "Esta Cidade", "00:02:20", FALSE, "Rock", 63878, 10, 5);
INSERT INTO Song VALUES (90, "Não Sou O Único", "00:03:38", FALSE, "Rock", 1941543, 10, 6);
INSERT INTO Song VALUES (91, "N' América", "00:04:42", FALSE, "Rock", 144557, 10, 7);
INSERT INTO Song VALUES (92, "Vida Malvada", "00:04:47", FALSE, "Rock", 375219, 10, 8);
INSERT INTO Song VALUES (93, "Circo de Feras", "00:03:53", FALSE, "Rock", 1198802, 10, 9);


INSERT INTO Album VALUES (11, "Coração Não Tem Idade (Vou Beijar)[feat. Toy]", 1, "00:04:23", "2019", 22);
INSERT INTO Song VALUES (94, "Coração Não Tem Idade (Vou Beijar)[feat. Toy]", "00:04:23", FALSE, "Metal", 845341, 11, 1);


INSERT INTO Album VALUES (12, "Coração Não Tem Idade (Vou Beijar)", 1, "00:04:28", "2017", 21);
INSERT INTO Song VALUES (95, "Coração Não Tem Idade (Vou Beijar)", "00:04:28", FALSE, "Pop", 3922516, 12, 1);

INSERT INTO Album VALUES (13, "In The Court Of The Dragon", 10, "00:52:16", "2021", 22);
INSERT INTO Song VALUES (96, "X", "00:01:27", FALSE, "Metal", 680967, 13, 1);
INSERT INTO Song VALUES (97, "In The Court Of The Dragon", "00:05:09", FALSE, "Metal", 4479160, 13, 2);
INSERT INTO Song VALUES (98, "Like A Sword Over Damocles", "00:05:30", FALSE, "Metal", 1370092, 13, 3);
INSERT INTO Song VALUES (99, "Feast Of Fire", "00:04:18", FALSE, "Metal", 5423217, 13, 4);
INSERT INTO Song VALUES (100, "A Crisis Of Revelation", "00:05:35", FALSE, "Metal", 1099362, 13, 5);
INSERT INTO Song VALUES (101, "The Shadow Of The Abattoir", "00:07:11", FALSE, "Metal", 1110641, 13, 6);
INSERT INTO Song VALUES (102, "No Way Back Just Through", "00:03:53", FALSE, "Metal", 1816676, 13, 7);
INSERT INTO Song VALUES (103, "Fall Into Your Hands", "00:07:45", FALSE, "Metal", 841274, 13, 8);
INSERT INTO Song VALUES (104, "From Dawn To Decadence", "00:04:08", FALSE, "Metal", 703400, 13, 9);
INSERT INTO Song VALUES (105, "The Phalanx", "00:07:15", FALSE, "Metal", 1542828, 13, 10);


--------------------------------

INSERT INTO Playlist VALUES (1, "Bangers", FALSE, 18, "01:10:36", 1);
INSERT INTO SongPositionInPlaylist VALUES (25,1,1);
INSERT INTO SongPositionInPlaylist VALUES (26,1,2);
INSERT INTO SongPositionInPlaylist VALUES (27,1,3);
INSERT INTO SongPositionInPlaylist VALUES (28,1,4);
INSERT INTO SongPositionInPlaylist VALUES (29,1,5);
INSERT INTO SongPositionInPlaylist VALUES (30,1,6);
INSERT INTO SongPositionInPlaylist VALUES (31,1,7);
INSERT INTO SongPositionInPlaylist VALUES (32,1,8);
INSERT INTO SongPositionInPlaylist VALUES (58,1,9);
INSERT INTO SongPositionInPlaylist VALUES (60,1,10);
INSERT INTO SongPositionInPlaylist VALUES (61,1,11);
INSERT INTO SongPositionInPlaylist VALUES (62,1,12);
INSERT INTO SongPositionInPlaylist VALUES (64,1,13);
INSERT INTO SongPositionInPlaylist VALUES (65,1,14);
INSERT INTO SongPositionInPlaylist VALUES (73,1,15);
INSERT INTO SongPositionInPlaylist VALUES (85,1,16);
INSERT INTO SongPositionInPlaylist VALUES (90,1,17);
INSERT INTO SongPositionInPlaylist VALUES (94,1,18);



INSERT INTO Playlist VALUES (2, "Smol Chungus", TRUE, 18, "01:06:44", 2);
INSERT INTO SongPositionInPlaylist VALUES (95, 2, 1);
INSERT INTO SongPositionInPlaylist VALUES (74, 2, 2);
INSERT INTO SongPositionInPlaylist VALUES (50, 2, 3);
INSERT INTO SongPositionInPlaylist VALUES (83, 2, 4);
INSERT INTO SongPositionInPlaylist VALUES (68, 2, 5);
INSERT INTO SongPositionInPlaylist VALUES (79, 2, 6);
INSERT INTO SongPositionInPlaylist VALUES (104, 2, 7);
INSERT INTO SongPositionInPlaylist VALUES (71, 2, 8);
INSERT INTO SongPositionInPlaylist VALUES (81, 2, 9);
INSERT INTO SongPositionInPlaylist VALUES (21, 2, 10);
INSERT INTO SongPositionInPlaylist VALUES (16, 2, 11);
INSERT INTO SongPositionInPlaylist VALUES (100, 2, 12);
INSERT INTO SongPositionInPlaylist VALUES (49, 2, 13);
INSERT INTO SongPositionInPlaylist VALUES (85, 2, 14);
INSERT INTO SongPositionInPlaylist VALUES (40, 2, 15);
INSERT INTO SongPositionInPlaylist VALUES (33, 2, 16);
INSERT INTO SongPositionInPlaylist VALUES (24, 2, 17);
INSERT INTO SongPositionInPlaylist VALUES (61, 2, 18);


INSERT INTO Playlist VALUES (3, "Tuga", FALSE, 10, "00:42:11", 4);
INSERT INTO SongPositionInPlaylist VALUES (23, 3, 1);
INSERT INTO SongPositionInPlaylist VALUES (95, 3, 2);
INSERT INTO SongPositionInPlaylist VALUES (85, 3, 3);
INSERT INTO SongPositionInPlaylist VALUES (86, 3, 4);
INSERT INTO SongPositionInPlaylist VALUES (87, 3, 4);
INSERT INTO SongPositionInPlaylist VALUES (88, 3, 5);
INSERT INTO SongPositionInPlaylist VALUES (89, 3, 6);
INSERT INTO SongPositionInPlaylist VALUES (90, 3, 7);
INSERT INTO SongPositionInPlaylist VALUES (91, 3, 8);
INSERT INTO SongPositionInPlaylist VALUES (92, 3, 9);
INSERT INTO SongPositionInPlaylist VALUES (93, 3, 10);

--------------------------------

INSERT INTO LikedAlbum VALUES (1, 2);
INSERT INTO LikedAlbum VALUES (4, 2);
INSERT INTO LikedAlbum VALUES (4, 1);
INSERT INTO LikedAlbum VALUES (8, 1);
INSERT INTO LikedAlbum VALUES (10, 5);
INSERT INTO LikedAlbum VALUES (7, 7);
INSERT INTO LikedAlbum VALUES (6, 17);
INSERT INTO LikedAlbum VALUES (12, 2);
INSERT INTO LikedAlbum VALUES (8, 9);
INSERT INTO LikedAlbum VALUES (8, 8);
INSERT INTO LikedAlbum VALUES (9, 17);
INSERT INTO LikedAlbum VALUES (4, 3);
INSERT INTO LikedAlbum VALUES (10, 20);
INSERT INTO LikedAlbum VALUES (13, 9);
INSERT INTO LikedAlbum VALUES (3, 8);
INSERT INTO LikedAlbum VALUES (10, 6);
INSERT INTO LikedAlbum VALUES (8, 18);

--------------------------------

INSERT INTO LikedSong VALUES (10, 1);
INSERT INTO LikedSong VALUES (10, 2);
INSERT INTO LikedSong VALUES (4, 4);
INSERT INTO LikedSong VALUES (6, 3);
INSERT INTO LikedSong VALUES (18, 6);
INSERT INTO LikedSong VALUES (6, 11);
INSERT INTO LikedSong VALUES (68, 17);
INSERT INTO LikedSong VALUES (38, 19);
INSERT INTO LikedSong VALUES (1, 22);
INSERT INTO LikedSong VALUES (99, 2);
INSERT INTO LikedSong VALUES (85, 19);
INSERT INTO LikedSong VALUES (18, 18);
INSERT INTO LikedSong VALUES (97, 2);
INSERT INTO LikedSong VALUES (92, 20);
INSERT INTO LikedSong VALUES (64, 15);
INSERT INTO LikedSong VALUES (4, 19);
INSERT INTO LikedSong VALUES (24, 21);
INSERT INTO LikedSong VALUES (76, 11);
INSERT INTO LikedSong VALUES (67, 7);
INSERT INTO LikedSong VALUES (46, 15);
INSERT INTO LikedSong VALUES (39, 22);
INSERT INTO LikedSong VALUES (101, 12);
INSERT INTO LikedSong VALUES (104, 3);
INSERT INTO LikedSong VALUES (16, 8);
INSERT INTO LikedSong VALUES (65, 3);
INSERT INTO LikedSong VALUES (33, 1);
INSERT INTO LikedSong VALUES (50, 10);
INSERT INTO LikedSong VALUES (50, 11);
INSERT INTO LikedSong VALUES (94, 4);
INSERT INTO LikedSong VALUES (17, 9);
INSERT INTO LikedSong VALUES (61, 8);
INSERT INTO LikedSong VALUES (78, 1);
INSERT INTO LikedSong VALUES (42, 7);
INSERT INTO LikedSong VALUES (97, 5);
INSERT INTO LikedSong VALUES (85, 15);
INSERT INTO LikedSong VALUES (66, 2);
INSERT INTO LikedSong VALUES (39, 20);
INSERT INTO LikedSong VALUES (17, 10);
INSERT INTO LikedSong VALUES (66, 1);
INSERT INTO LikedSong VALUES (15, 21);
INSERT INTO LikedSong VALUES (70, 17);
INSERT INTO LikedSong VALUES (26, 6);
INSERT INTO LikedSong VALUES (93, 3);
INSERT INTO LikedSong VALUES (12, 6);
INSERT INTO LikedSong VALUES (20, 17);
INSERT INTO LikedSong VALUES (94, 14);
INSERT INTO LikedSong VALUES (33, 19);
INSERT INTO LikedSong VALUES (77, 4);
INSERT INTO LikedSong VALUES (44, 12);
INSERT INTO LikedSong VALUES (45, 17);
INSERT INTO LikedSong VALUES (56, 18);
INSERT INTO LikedSong VALUES (73, 2);
INSERT INTO LikedSong VALUES (24, 3);
INSERT INTO LikedSong VALUES (33, 13);
INSERT INTO LikedSong VALUES (59, 12);
INSERT INTO LikedSong VALUES (30, 18);
INSERT INTO LikedSong VALUES (100, 1);
INSERT INTO LikedSong VALUES (24, 8);
INSERT INTO LikedSong VALUES (99, 5);
INSERT INTO LikedSong VALUES (30, 3);

--------------------------------

INSERT INTO LikedPlaylist VALUES (2, 22);
INSERT INTO LikedPlaylist VALUES (2, 19);
INSERT INTO LikedPlaylist VALUES (1, 8);
INSERT INTO LikedPlaylist VALUES (2, 20);
INSERT INTO LikedPlaylist VALUES (2, 2);
INSERT INTO LikedPlaylist VALUES (1, 13);
INSERT INTO LikedPlaylist VALUES (3, 20);
INSERT INTO LikedPlaylist VALUES (1, 12);
INSERT INTO LikedPlaylist VALUES (3, 2);
INSERT INTO LikedPlaylist VALUES (1, 16);
INSERT INTO LikedPlaylist VALUES (2, 15);
INSERT INTO LikedPlaylist VALUES (2, 6);
INSERT INTO LikedPlaylist VALUES (3, 14);
INSERT INTO LikedPlaylist VALUES (3, 12);

--------------------------------

INSERT INTO Collaborator VALUES (1, 2);
INSERT INTO Collaborator VALUES (2, 1);
INSERT INTO Collaborator VALUES (1,3);

--------------------------------

INSERT INTO FeaturedArtists VALUES (10, 15);
INSERT INTO FeaturedArtists VALUES (21, 18);
