CREATE TABLE album (
  album_id SERIAL PRIMARY KEY, 
  name VARCHAR(255) NOT NULL, 
  year date NOT NULL
);

CREATE TABLE performer (
  performer_id SERIAL PRIMARY KEY, 
  name VARCHAR(255) NOT NULL
);

CREATE TABLE genre (
  genre_id SERIAL PRIMARY KEY, 
  name VARCHAR(100) NOT NULL
);

CREATE TABLE album_performer (
  album_performer_id SERIAL PRIMARY KEY, 
  album_id INT NOT NULL, 
  performer_id INT NOT NULL, 
  CONSTRAINT fk_album FOREIGN KEY(album_id) REFERENCES album(album_id) ON DELETE CASCADE, 
  CONSTRAINT fk_performer FOREIGN KEY(performer_id) REFERENCES performer(performer_id) ON DELETE CASCADE
);

CREATE TABLE performer_genre (
  performer_genre_id SERIAL PRIMARY KEY, 
  performer_id INT NOT NULL, 
  genre_id INT NOT NULL,
  CONSTRAINT fk_performer FOREIGN KEY(performer_id) REFERENCES performer(performer_id) ON DELETE cascade,
  CONSTRAINT fk_genre FOREIGN KEY(genre_id) REFERENCES genre(genre_id) ON DELETE CASCADE
);

CREATE TABLE collection (
  collection_id SERIAL PRIMARY KEY, 
  name VARCHAR(255) NOT NULL, 
  year date NOT NULL
);

CREATE TABLE track (
  track_id SERIAL PRIMARY KEY, 
  name VARCHAR(100) NOT NULL, 
  duration INT NOT NULL,
  album_id INTEGER REFERENCES album(album_id) NOT NULL
);

CREATE TABLE track_collection (
  track_collection_id SERIAL PRIMARY KEY, 
  track_id INT NOT NULL, 
  collection_id INT NOT NULL, 
  CONSTRAINT fk_track FOREIGN KEY(track_id) REFERENCES track(track_id) ON DELETE CASCADE, 
  CONSTRAINT fk_collection FOREIGN KEY(collection_id) REFERENCES collection(collection_id) ON DELETE CASCADE
);