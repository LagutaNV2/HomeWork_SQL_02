# Executors
INSERT INTO executors
(name_executor)
VALUES('Ella Fitzgerald'); 

INSERT INTO executors
(name_executor)
VALUES('Frank Sinatra');

INSERT INTO executors
(name_executor)
VALUES('Bob Dylan');

INSERT INTO executors
(name_executor)
VALUES('Madonna');

# Genres
INSERT INTO genres
(name_genre)
VALUES('jazz'); 

INSERT INTO genres
(name_genre)
VALUES('rock');

INSERT INTO genres
(name_genre)
VALUES('pop');

INSERT INTO genres
(name_genre)
VALUES('punk rock');

# Albums
INSERT INTO albums
(id_album, name_album, year_album)
VALUES(1, 'Strangers In The Night', 1966);

INSERT INTO albums
(id_album, name_album, year_album)
VALUES(2, 'Like a prayer', 1989);

INSERT INTO albums
(id_album, name_album, year_album)
VALUES(3, 'Fallen Angels', 2016);

INSERT INTO albums
(id_album, name_album, year_album)
VALUES(4, 'Madam X', 2019);

INSERT INTO albums
(id_album, name_album, year_album)
VALUES(5, 'My spec album for home work', 2020);


# Tracks
INSERT INTO tracks
(id_track, name_track, duration_min, id_album)
VALUES(1, 'Strangers in the Night', 2,35, 1);

INSERT INTO tracks
(id_track, name_track, duration_min, id_album)
VALUES(2, 'Summer Wind', 2.53, 1);

INSERT INTO tracks
(id_track, name_track, duration_min, id_album)
VALUES(3, 'Like a Prayer', 5.39, 2);

INSERT INTO tracks
(id_track, name_track, duration_min, id_album)
VALUES(4, 'Cherish', 5.03, 2);

INSERT INTO tracks
(id_track, name_track, duration_min, id_album)
VALUES(5, 'Young at Heart', 2.59, 3);

INSERT INTO tracks
(id_track, name_track, duration_min, id_album)
VALUES(6, 'Maybe You’ll Be There', 2.56, 3);

INSERT INTO tracks
(id_track, name_track, duration_min, id_album)
VALUES(7, 'My special track for home work', 3.56, 5);

INSERT INTO tracks
(id_track, name_track, duration_min, id_album)
VALUES(8, 'Medellín', 4.58, 4);

# Genre-Executor
INSERT INTO genre_executor
(id_genre, id_executor)
VALUES(1, 1);

INSERT INTO genre_executor
(id_genre, id_executor)
VALUES(1, 2);

INSERT INTO genre_executor
(id_genre, id_executor)
VALUES(2, 3);

INSERT INTO genre_executor
(id_genre, id_executor)
VALUES(3, 2);

INSERT INTO genre_executor
(id_genre, id_executor)
VALUES(3, 4);

# Album-Executor
INSERT INTO album_executor
(id_album, id_executor)
VALUES(1, 2);

INSERT INTO album_executor
(id_album, id_executor)
VALUES(2, 4);

INSERT INTO album_executor
(id_album, id_executor)
VALUES(3, 3);

INSERT INTO album_executor
(id_album, id_executor)
VALUES(4, 4);

INSERT INTO album_executor
(id_album, id_executor)
VALUES(5, 3);

# Collections
INSERT INTO collections
(id_collection, name_collection, year_collection)
VALUES(1, 'Romantic collection 1', 2015);

INSERT INTO collections
(id_collection, name_collection, year_collection)
VALUES(2, 'Romantic collection 2', 2016);

INSERT INTO collections
(id_collection, name_collection, year_collection)
VALUES(3, 'Gold collection 1', 1991);

INSERT INTO collections
(id_collection, name_collection, year_collection)
VALUES(4, 'Gold collection 2', 1992);

INSERT INTO collections
(id_collection, name_collection, year_collection)
VALUES(5, 'We will rock, we will roll', 2019);


#Track-collections
INSERT INTO track_collection
(id_track, id_collection)
VALUES(1, 1);

INSERT INTO track_collection
(id_track, id_collection)
VALUES(1, 2);

INSERT INTO track_collection
(id_track, id_collection)
VALUES(1, 3);

INSERT INTO track_collection
(id_track, id_collection)
VALUES(1, 4);

INSERT INTO track_collection
(id_track, id_collection)
VALUES(2, 2);

INSERT INTO track_collection
(id_track, id_collection)
VALUES(3, 1);

INSERT INTO track_collection
(id_track, id_collection)
VALUES(5, 5);

INSERT INTO track_collection
(id_track, id_collection)
VALUES(6, 5);