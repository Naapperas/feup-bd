PRAGMA foreign_keys = ON;

INSERT INTO User VALUES (1, 'Gonçalo Marques', 'goncalo@gmail.com', 0, '01-09-2002');
INSERT INTO Consumer VALUES (1, 'Free');

INSERT INTO User VALUES (2, 'Nuno Pereira', 'nuno@gmail.com', 0, '20-02-2002');
INSERT INTO Consumer VALUES (2, 'Student');

INSERT INTO User VALUES (3, 'Zé Gaspar', 'ze@gmail.com', 0, '13-08-2002');
INSERT INTO Consumer VALUES (3, 'Premium');

INSERT INTO User VALUES (4, 'Zé Castro', 'castro@gmail.com', 0, '21-05-2002');
INSERT INTO Consumer VALUES (4, 'Family');

INSERT INTO User VALUES (5, 'Maria', 'maria@gmail.com', 0, '23-01-2003');
INSERT INTO Consumer VALUES (5, 'Duo');

INSERT INTO User VALUES (6, 'Pedro Sousa', 'pesousa@fe.up.pt', 0, '16-01-1985');
INSERT INTO Consumer VALUES (6, 'Duo');

INSERT INTO User VALUES (7, 'Fearless Records', 'admin@fr.com', 1, '09-12-1970');
INSERT INTO Consumer VALUES (7, 'Premium');

INSERT INTO User VALUES (8, 'Ana', 'ana@hotmail.com', 0, '23-08-2005');
INSERT INTO Consumer VALUES (8, 'Free');

INSERT INTO User VALUES (9, 'Mariana', 'mari@gmail.com', 0, '08-08-2002');
INSERT INTO Consumer VALUES (9, 'Student');

INSERT INTO User VALUES (10, 'Guilherme', 'gui@edu.fe.up.pt', 0, '16-12-2002');
INSERT INTO Consumer VALUES (10, 'Family');

--------------------------------

INSERT INTO User VALUES (11, 'Sabaton', 'sabaton@gmail.com', 1, '05-10-1999');
INSERT INTO Artist VALUES (11, 'Swedish Power Metal', 2626219);

INSERT INTO User VALUES (12, 'Muse', 'muse@muse.muse', 1, '01-01-1994');
INSERT INTO Artist VALUES (12, 'British Rock', 10703319);

INSERT INTO User VALUES (13, 'Queen', 'frederico.mercurio@gmail.com', 1, '20-02-1970');
INSERT INTO Artist VALUES (13, 'British', 39181301);

INSERT INTO User VALUES (14, 'Call Me Alice', 'cma@edu.fe.up.pt', 0, '25-04-2015');
INSERT INTO Artist VALUES (14, NULL, 202);

INSERT INTO User VALUES (15, 'Quim Barreiros', 'quim@gmail.com', 1, '19-06-1947');
INSERT INTO Artist VALUES (15, 'Pimba', 76375);

INSERT INTO User VALUES (16, 'Xutos e Pontapés', 'xutos@mail.pt', 1, '02-07-1980');
INSERT INTO Artist VALUES (16, 'Contentores', 155207);

INSERT INTO User VALUES (17, 'Nirvana', 'kurt.cubano@gmail.com', 1, '23-03-1987');
INSERT INTO Artist VALUES (17, 'Grunge American band', 20608408);

INSERT INTO User VALUES (18, 'Foo Fighters', 'baterista.dos.nirvana@yahoo.com', 1, '24-09-1994');
INSERT INTO Artist VALUES (18, 'Drums', 13073505);

INSERT INTO User VALUES (19, 'Rise Against', 'ra@gmail.com', 1, '20-02-1999');
INSERT INTO Artist VALUES (19, 'Who ?', 5791016);

INSERT INTO User VALUES (20, 'Olivia Rodrigo', 'xoxo@facebook.pt', 1, '20-03-2002');
INSERT INTO Artist VALUES (20, '''I love her'' - random fan', 44544112);

INSERT INTO User VALUES (21, 'Toy', 'voucantarvoudançar@gmail.com', 1, '10-02-1963');
INSERT INTO Artist VALUES (21, 'Vou mh mh até me cansar', 65914);

INSERT INTO User VALUES (22, 'Trivium', 'Trivum@hotmail.com', 1, '04-10-1999');
INSERT INTO Artist VALUES (22, NULL, 1856614);

--------------------------------

INSERT INTO Concert VALUES (1, '01-01-1990', '15:37:00', 'America', 19);

INSERT INTO Concert VALUES (2, '05-12-2021', '16:00:00', 'Gondomar', 14);
INSERT INTO GuestArtist VALUES (2, 16);

INSERT INTO Concert VALUES (3, '25-04-1974', '23:59:00', 'Garage', 17);
INSERT INTO GuestArtist VALUES (3, 18);
INSERT INTO GuestArtist VALUES (3, 13);

INSERT INTO Concert VALUES (4, '20-02-2022', '15:00:00', 'Minha Casa', 20);
INSERT INTO GuestArtist VALUES (4, 11);

INSERT INTO Concert VALUES (5, '25-12-2012', '22:00:00', 'Wembley', 12);

INSERT INTO Concert VALUES (6, '04-07-2019', '19:00:00', 'Estádio do Restelo', 22);
INSERT INTO GuestArtist VALUES (6, 21);

--------------------------------

INSERT INTO Podcast VALUES (1, 'The Jordan B. Peterson Podcast', 'something something Dr. Jordan Peterson libtards something something');
INSERT INTO Podcast VALUES (2, 'Big Chungus', NULL);

--------------------------------

INSERT INTO PodcastGenre VALUES (1, 'History');
INSERT INTO PodcastGenre VALUES (2, 'Crime');
INSERT INTO PodcastGenre VALUES (3, 'News and Politics');
INSERT INTO PodcastGenre VALUES (4, 'Comedy');
INSERT INTO PodcastGenre VALUES (5, 'Sport and Leisure');
INSERT INTO PodcastGenre VALUES (6, 'Society and Culture');
INSERT INTO PodcastGenre VALUES (7, 'Educational');
INSERT INTO PodcastGenre VALUES (8, 'Lifestyle');
INSERT INTO PodcastGenre VALUES (9, 'Business and Tech');
INSERT INTO PodcastGenre VALUES (10, 'Arts');
INSERT INTO PodcastGenre VALUES (11, 'Music');
INSERT INTO PodcastGenre VALUES (12, 'Games');
INSERT INTO PodcastGenre VALUES (13, 'Family Friendly');

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

INSERT INTO PodcastEpisode VALUES (1, 1, 'Reality and the Sacred', '00:58:18', 'Dr. Peterson describes', '01-12-2016');
INSERT INTO PodcastEpisode VALUES (1, 2, 'Tragedy vs. Evil', '00:43:40', 'Dr. Peterson talks', '16-12-2016');
INSERT INTO PodcastEpisode VALUES (1, 3, 'The Necessity Of Virtue', '00:52:02', 'Dr. Peterson speaks', '31-12-2016');
INSERT INTO PodcastEpisode VALUES (1, 5, 'The Psychology of Redemption', '00:47:29', 'Dr. Peterson tells', '01-01-2017');

INSERT INTO PodcastEpisode VALUES (2, 1, 'Big Chungi', '05:00:00', 'Our lord and savior Big Chungus releases his wisdom upon us mere mortals', '25-12-2021');

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

INSERT INTO Album VALUES (1, 'Sour', 0, 0, '2021', 20);
INSERT INTO Song VALUES (1, 'brutal', 143, 1, 'Pop', 262424795, 1, 1);
INSERT INTO Song VALUES (2, 'traitor', 229, 0, 'Pop', 520740950, 1, 2);
INSERT INTO Song VALUES (3, 'drivers license', 242, 1, 'Pop', 1190809499, 1, 3);
INSERT INTO Song VALUES (4, '1 step forward, 3 steps back', 163, 1, 'Pop',168517109, 1, 4);
INSERT INTO Song VALUES (5, 'deja vu', 215, 1, 'Pop', 654698423, 1, 5);
INSERT INTO Song VALUES (6, 'good 4 u', 178, 1, 'Pop', 1098075334, 1, 6);
INSERT INTO Song VALUES (7, 'enough for you', 202, 0, 'Pop', 191431308, 1, 7);
INSERT INTO Song VALUES (8, 'happier', 175, 1, 'Pop', 379280079, 1, 8);
INSERT INTO Song VALUES (9, 'jealousy,jealousy', 173, 0, 'Pop', 288466335, 1, 9);
INSERT INTO Song VALUES (10, 'favorite crime', 152, 0, 'Pop', 137196234, 1, 10);
INSERT INTO Song VALUES (11, 'hope ur ok', 209, 0, 'Pop', 137486281, 1, 11);

INSERT INTO Album VALUES (2, 'Simulation Theory', 0, 0, '2018', 12);
INSERT INTO Song VALUES (12,'Algorithm', 245, 0, 'Rock', 20689183, 2, 1);
INSERT INTO Song VALUES (13, 'The Dark Side', 227, 0, 'Rock', 42610124, 2, 2);
INSERT INTO Song VALUES (14,'Pressure', 235, 0, 'Rock', 78816074, 2, 3);
INSERT INTO Song VALUES (15, 'Propaganda', 180, 0, 'Rock', 17312388, 2, 4);
INSERT INTO Song VALUES (16, 'Break It to Me', 217, 0, 'Rock', 13712317, 2, 5);
INSERT INTO Song VALUES (17, 'Something Human', 226, 0, 'Rock', 36004014, 2, 6);
INSERT INTO Song VALUES (18, 'Thought Contagion', 206, 0, 'Rock', 62583068, 2 , 7);
INSERT INTO Song VALUES (19, 'Get up and Fight', 244, 0, 'Rock', 12081230, 2, 8);
INSERT INTO Song VALUES (20, 'Blockades', 230, 0, 'Rock', 11780509, 2, 9);
INSERT INTO Song VALUES (21,'Dig Down', 228, 0, 'Rock', 53881508, 2, 10);
INSERT INTO Song VALUES (22, 'The Void', 284, 0, 'Rock', 9934881, 2, 11);

INSERT INTO Album VALUES (3, 'A Cabritinha', 0, 0, '2004', 15);
INSERT INTO Song VALUES (23, 'A Cabritinha',228, 0, 'Pop', 2852020, 3, 1);

INSERT INTO Album VALUES (4, 'The Great War', 0, 0, '2019', 11);
INSERT INTO Song VALUES (24, 'The Future of Warfare', 206, 0, 'Metal', 12594510, 4, 1);
INSERT INTO Song VALUES (25, 'Seven Pillars of Wisdom', 182, 0, 'Metal', 20785219,4, 2);
INSERT INTO Song VALUES (26, '82nd All the Way', 211, 0, 'Metal', 22271563, 4,3);
INSERT INTO Song VALUES (27, 'The Attack of the Dead Men', 235, 0, 'Metal', 29938858, 4, 4);
INSERT INTO Song VALUES (28, 'Devil Dogs', 197, 0, 'Metal', 14527864, 4, 5);
INSERT INTO Song VALUES (29, 'The Red Baron', 202, 0, 'Metal', 39753992, 4,6);
INSERT INTO Song VALUES (30, 'Great War', 268, 0, 'Metal', 30153073, 4,7);
INSERT INTO Song VALUES (31, 'A Ghost in the Trenches', 205, 0, 'Metal', 10305548, 4, 8);
INSERT INTO Song VALUES (32, 'Fields of Verdun', 197, 0, 'Metal', 35990023, 4,9);
INSERT INTO Song VALUES (33, 'The End of the War to End All Wars', 285, 0, 'Metal',7113924, 4, 10);
INSERT INTO Song VALUES (34, 'In Flanders Fields', 116, 0, 'Metal', 4830710, 4, 11);

INSERT INTO Album VALUES (5, 'Broken Glass', 0, 0, '2020', 14);
INSERT INTO Song VALUES (35, 'Broken Glass', 117, 0, 'Indie', 4783, 5, 1);

INSERT INTO Album VALUES (6, 'Endgame', 0, 0, '2011', 19);
INSERT INTO Song VALUES (36, 'Architects', 222, 0, 'Rock', 22028374, 6, 1);
INSERT INTO Song VALUES (37, 'Help Is On The Way', 237, 0, 'Rock', 45502912, 6, 2);
INSERT INTO Song VALUES (38, 'Make It Stop(September''s Children)', 234, 0, 'Rock',54911809, 6, 3);
INSERT INTO Song VALUES (39, 'Disparity By Design', 228, 0, 'Rock', 9485152, 6, 4);
INSERT INTO Song VALUES (40, 'Satellite', 238, 0, 'Rock',147642252, 6, 5);
INSERT INTO Song VALUES (41, 'Midnight Hands', 257, 0, 'Rock', 9087046, 6, 6);
INSERT INTO Song VALUES (42, 'Survivor Guilt', 239, 0, 'Rock', 12522456, 6, 7);
INSERT INTO Song VALUES (43, 'Broken Mirrors', 234, 0, 'Rock', 9399696, 6, 8);
INSERT INTO Song VALUES (44, 'Wait For Me', 219, 0, 'Rock', 11741955, 6, 9);
INSERT INTO Song VALUES (45, 'A Gentlemen''s Coup', 226, 0, 'Rock', 8858463, 6, 10);
INSERT INTO Song VALUES (46, 'This Is Letting Go', 221, 0, 'Rock', 15933423, 6, 11);
INSERT INTO Song VALUES (47, 'Endgame', 204, 0, 'Rock',10105051, 6, 12);

INSERT INTO Album VALUES (7, 'A Night At The Opera', 0, 0, '1975', 13);
INSERT INTO Song VALUES (48, 'Death Om Two Legs', 223, 0, 'Rock', 40072359, 7, 1);
INSERT INTO Song VALUES (49, 'Lazing On A Sunday Afternoon', 67, 0, 'Rock', 27642189, 7, 2);
INSERT INTO Song VALUES (50, 'I''m In Love With My Car', 184, 0, 'Rock', 16479030, 7, 3);
INSERT INTO Song VALUES (51, 'You''re My Best Friend', 170, 0, 'Rock', 212451576, 7, 4);
INSERT INTO Song VALUES (52, '''39', 210, 0, 'Rock',48172668, 7, 5);
INSERT INTO Song VALUES (53, 'Sweet Lady', 242, 0, 'Rock', 8033683, 7, 6);
INSERT INTO Song VALUES (54, 'Seaside Rendezvous', 134, 0, 'Rock', 12625273, 7, 7);
INSERT INTO Song VALUES (55, 'The Prophet''s Song', 500, 0, 'Rock', 10129464, 7, 8);
INSERT INTO Song VALUES (56, 'Love of my Life', 217, 0, 'Rock',293321939, 7, 9);
INSERT INTO Song VALUES (57, 'Good Company', 203, 0, 'Rock', 8441159, 7, 10);
INSERT INTO Song VALUES (58, 'Bohemian Rhapsody', 354, 0, 'Rock',1664659500, 7, 11);
INSERT INTO Song VALUES (59, 'God Save The Queen', 75, 0, 'Rock', 10241135, 7, 12);

INSERT INTO Album VALUES (8, 'Nevermind', 0, 0, '1991', 17);
INSERT INTO Song VALUES (60, 'Smells Like Teen Spirit', 301, 0, 'Rock', 1141145309, 8, 1);
INSERT INTO Song VALUES (61, 'In Bloom', 255, 0, 'Rock', 184278940, 8, 2);
INSERT INTO Song VALUES (62, 'Come As You Are', 218, 0, 'Rock', 695883998, 8, 3);
INSERT INTO Song VALUES (63, 'Breed', 184, 0, 'Rock', 74776760, 8, 4);
INSERT INTO Song VALUES (64, 'Lithium', 257, 0, 'Rock', 360224271, 8, 5);
INSERT INTO Song VALUES (65, 'Polly', 173, 0, 'Rock', 79095508, 8, 6);
INSERT INTO Song VALUES (66, 'Territorial Pissings', 142, 0, 'Rock',52876620, 8 , 7);
INSERT INTO Song VALUES (67, 'Drain You', 223, 0, 'Rock', 88138574, 8, 8);
INSERT INTO Song VALUES (68, 'Lounge Act', 156, 1, 'Rock', 54566458, 8, 9);
INSERT INTO Song VALUES (69, 'Stay Away', 211, 0, 'Rock', 50175712, 8, 10);
INSERT INTO Song VALUES (70, 'On A Plain', 194, 0, 'Rock', 40604849, 8, 11);
INSERT INTO Song VALUES (71, 'Something In The Way', 232, 0, 'Rock', 92270021, 8, 12);
INSERT INTO Song VALUES (72, 'Endless, Nameless', 403, 0, 'Rock', 20114059, 8, 13);

INSERT INTO Album VALUES (9, 'Echoes, Silence, Patience & Grace', 0, 0, '2007', 18);
INSERT INTO Song VALUES (73, 'The Pretender', 269, 0, 'Rock', 468751521, 9, 1);
INSERT INTO Song VALUES (74, 'Let It Die', 244, 0, 'Rock', 34621720, 9, 2);
INSERT INTO Song VALUES (75, 'Erase/Replace', 253, 0, 'Rock', 101965076, 9, 3);
INSERT INTO Song VALUES (76, 'Long Road To Ruin', 224, 0, 'Rock', 48661266, 9, 4);
INSERT INTO Song VALUES (77, 'Come Alive', 310, 0, 'Rock', 20626072, 9, 5);
INSERT INTO Song VALUES (78, 'Stranger Things Have Happened', 321, 0, 'Rock', 30341165, 9, 6);
INSERT INTO Song VALUES (79, 'Cheer Up, Boys (Your Make Up Is Running)', 221, 0, 'Rock', 8635089, 9, 7);
INSERT INTO Song VALUES (80, 'Summer''s End', 277, 0, 'Rock', 9062072, 9, 8);
INSERT INTO Song VALUES (81, 'Ballad Of The Beaconsfield Miners', 152, 0, 'Rock', 6735760, 9, 9);
INSERT INTO Song VALUES (82, 'Statues', 227, 0, 'Rock', 7324793, 9, 10);
INSERT INTO Song VALUES (83, 'But, Honestly', 275, 0, 'Rock', 10297750, 9, 11);
INSERT INTO Song VALUES (84, 'Home', 293, 0, 'Rock', 22786095, 9, 12);

INSERT INTO Album VALUES (10, 'Circo de Feras', 0, 0, '1987', 16);
INSERT INTO Song VALUES (85, 'Contentores', 231, 0, 'Rock', 3515421, 10, 1);
INSERT INTO Song VALUES (86, 'Sai Prá Rua', 184, 0, 'Rock', 63235, 10, 2);
INSERT INTO Song VALUES (87, 'Pensão', 239, 0, 'Rock', 31146, 10, 3);
INSERT INTO Song VALUES (88, 'Desemprego', 221, 0, 'Rock', 25998, 10, 4);
INSERT INTO Song VALUES (89, 'Esta Cidade', 140, 0, 'Rock', 63878, 10, 5);
INSERT INTO Song VALUES (90, 'Não Sou O Único', 218, 0, 'Rock', 1941543, 10, 6);
INSERT INTO Song VALUES (91, 'N'' América', 282, 0, 'Rock', 144557, 10, 7);
INSERT INTO Song VALUES (92, 'Vida Malvada', 287, 0, 'Rock', 375219, 10, 8);
INSERT INTO Song VALUES (93, 'Circo de Feras', 233, 0, 'Rock', 1198802, 10, 9);

INSERT INTO Album VALUES (11, 'Coração Não Tem Idade (Vou Beijar)[feat. Toy]', 0, 0, '2019', 22);
INSERT INTO Song VALUES (94, 'Coração Não Tem Idade (Vou Beijar)[feat. Toy]', 263, 0, 'Metal', 845341, 11, 1);

INSERT INTO Album VALUES (12, 'Coração Não Tem Idade (Vou Beijar)', 0, 0, '2017', 21);
INSERT INTO Song VALUES (95, 'Coração Não Tem Idade (Vou Beijar)', 268, 0, 'Pop', 3922516, 12, 1);

INSERT INTO Album VALUES (13, 'In The Court Of The Dragon', 0, 0, '2021', 22);
INSERT INTO Song VALUES (96, 'X', 87, 0, 'Metal', 680967, 13, 1);
INSERT INTO Song VALUES (97, 'In The Court Of The Dragon', 309, 0, 'Metal', 4479160, 13, 2);
INSERT INTO Song VALUES (98, 'Like A Sword Over Damocles', 330, 0, 'Metal', 1370092, 13, 3);
INSERT INTO Song VALUES (99, 'Feast Of Fire', 258, 0, 'Metal', 5423217, 13, 4);
INSERT INTO Song VALUES (100, 'A Crisis Of Revelation', 335, 0, 'Metal', 1099362, 13, 5);
INSERT INTO Song VALUES (101, 'The Shadow Of The Abattoir', 431, 0, 'Metal', 1110641, 13, 6);
INSERT INTO Song VALUES (102, 'No Way Back Just Through', 233, 0, 'Metal', 1816676, 13, 7);
INSERT INTO Song VALUES (103, 'Fall Into Your Hands', 465, 0, 'Metal', 841274, 13, 8);
INSERT INTO Song VALUES (104, 'From Dawn To Decadence', 248, 0, 'Metal', 703400, 13, 9);
INSERT INTO Song VALUES (105, 'The Phalanx', 435, 0, 'Metal', 1542828, 13, 10);

--------------------------------

INSERT INTO Playlist VALUES (1, 'Bangers', 0, 0, 0, 1);
INSERT INTO SongPositionInPlaylist VALUES (25,1,1);
--INSERT INTO SongPositionInPlaylist VALUES (26,1,2);
--INSERT INTO SongPositionInPlaylist VALUES (27,1,3);
--INSERT INTO SongPositionInPlaylist VALUES (28,1,4);
--INSERT INTO SongPositionInPlaylist VALUES (29,1,5);
--INSERT INTO SongPositionInPlaylist VALUES (30,1,6);
--INSERT INTO SongPositionInPlaylist VALUES (31,1,7);
--INSERT INTO SongPositionInPlaylist VALUES (32,1,8);
--INSERT INTO SongPositionInPlaylist VALUES (58,1,9);
--INSERT INTO SongPositionInPlaylist VALUES (60,1,10);
--INSERT INTO SongPositionInPlaylist VALUES (61,1,11);
--INSERT INTO SongPositionInPlaylist VALUES (62,1,12);
--INSERT INTO SongPositionInPlaylist VALUES (64,1,13);
--INSERT INTO SongPositionInPlaylist VALUES (65,1,14);
--INSERT INTO SongPositionInPlaylist VALUES (73,1,15);
--INSERT INTO SongPositionInPlaylist VALUES (85,1,16);
--INSERT INTO SongPositionInPlaylist VALUES (90,1,17);
--INSERT INTO SongPositionInPlaylist VALUES (94,1,18);

INSERT INTO Playlist VALUES (2, 'Smol Chungus', 1, 0, 0, 2);
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

INSERT INTO Playlist VALUES (3, 'Tuga', 0, 0, 0, 4);
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
INSERT INTO Collaborator VALUES (1, 3);
INSERT INTO Collaborator VALUES (3, 6);
INSERT INTO Collaborator VALUES (2, 7);
INSERT INTO Collaborator VALUES (2, 5);
INSERT INTO Collaborator VALUES (2, 2);

--------------------------------

INSERT INTO FeaturedArtists VALUES (94, 21);
INSERT INTO FeaturedArtists VALUES (60, 18);
INSERT INTO FeaturedArtists VALUES (61, 18);
INSERT INTO FeaturedArtists VALUES (62, 18);
INSERT INTO FeaturedArtists VALUES (63, 18);
INSERT INTO FeaturedArtists VALUES (64, 18);
INSERT INTO FeaturedArtists VALUES (65, 18);
INSERT INTO FeaturedArtists VALUES (66, 18);
INSERT INTO FeaturedArtists VALUES (67, 18);
INSERT INTO FeaturedArtists VALUES (68, 18);
INSERT INTO FeaturedArtists VALUES (69, 18);
INSERT INTO FeaturedArtists VALUES (70, 18);
INSERT INTO FeaturedArtists VALUES (71, 18);
INSERT INTO FeaturedArtists VALUES (72, 18);

--------------------------------

INSERT INTO Follows VALUES (18,22);
INSERT INTO Follows VALUES (14,15);
INSERT INTO Follows VALUES (8,3);
INSERT INTO Follows VALUES (14,1);
INSERT INTO Follows VALUES (19,22);
INSERT INTO Follows VALUES (2,22);
INSERT INTO Follows VALUES (15,2);