CREATE TABLE IF NOT EXISTS Genres (
	id_genre SERIAL PRIMARY KEY,
	name_genre VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS Executors (
	id_executor SERIAL PRIMARY KEY,
	name_executor VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums (
	id_album SERIAL PRIMARY KEY,
	name_album VARCHAR(250) NOT null,
	year_album INTEGER
);

CREATE TABLE IF NOT EXISTS Tracks (
	id_track SERIAL PRIMARY KEY,
	name_track VARCHAR(250) NOT null,
	duration_min INTEGER not null,
	id_album INTEGER references Albums(id_album) not null
);

CREATE TABLE IF NOT EXISTS Collections (
	id_collection SERIAL PRIMARY KEY,
	name_collection VARCHAR(250) NOT null,
	year_collection INTEGER
);

CREATE TABLE IF NOT EXISTS Genre_Executor (
	id_genre INTEGER REFERENCES Genres(id_genre),
	id_executor INTEGER REFERENCES Executors(id_executor),
	CONSTRAINT id_genre_executor PRIMARY KEY (id_genre, id_executor)
);

CREATE TABLE IF NOT EXISTS Album_Executor (
	id_album INTEGER REFERENCES Albums(id_album),
	id_executor INTEGER REFERENCES Executors(id_executor),
	CONSTRAINT id_album_executor PRIMARY KEY (id_album, id_executor)
);

CREATE TABLE IF NOT EXISTS Track_Collection (
	id_track INTEGER REFERENCES Tracks(id_track),
	id_collection INTEGER REFERENCES Collections(id_collection),
	CONSTRAINT id_track_collection PRIMARY KEY (id_track, id_collection)
);



# изменения после отправки дом.задания №1
ALTER TABLE tracks 
    ALTER COLUMN duration_min numeric
    DEFAULT 0.01 FOR duration_min;

ALTER TABLE Albums
    ADD CHECK(year_album between 1900 and 2024);

ALTER TABLE albums 
    ADD year_album int4 NOT NULL DEFAULT 1900;


