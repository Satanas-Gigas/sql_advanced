CREATE TABLE IF NOT EXISTS genre (
         id SERIAL PRIMARY KEY,
         name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS singer (
	     id SERIAL PRIMARY KEY,
         name VARCHAR(40) UNIQUE NOT NULL	
);

CREATE TABLE IF NOT EXISTS album (
	     id SERIAL PRIMARY KEY,
	     name VARCHAR(40) NOT NULL,
         year INTEGER
         CHECK (year >= 1900)
);

CREATE TABLE IF NOT EXISTS track (
	     id SERIAL PRIMARY KEY,
	     name VARCHAR(40) NOT NULL,
         time INTEGER
         CHECK (time BETWEEN 10 AND 1000),
     	 album_id INTEGER REFERENCES album(id)
);

CREATE TABLE IF NOT EXISTS collection (
 	     id SERIAL PRIMARY KEY,
 	     name VARCHAR(40) NOT NULL,
 		 year INTEGER NOT NULL
 		 CHECK (year >= 1900)
);

CREATE TABLE IF NOT EXISTS genre_singer (
         genre_id INTEGER REFERENCES genre(id),
         singer_id INTEGER REFERENCES singer(id),
         CONSTRAINT g_s PRIMARY KEY (genre_id, singer_id)
);

CREATE TABLE IF NOT EXISTS singer_album (
         singer_id INTEGER REFERENCES singer(id),
		 album_id INTEGER REFERENCES album(id),
         CONSTRAINT s_a PRIMARY KEY (album_id, singer_id)
);

CREATE TABLE IF NOT EXISTS track_collection (
		 collection_id INTEGER REFERENCES collection(id),
         track_id INTEGER REFERENCES track(id),
   		 CONSTRAINT t_c PRIMARY KEY (collection_id, track_id)
);