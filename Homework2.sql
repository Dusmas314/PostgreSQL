CREATE TABLE IF NOT EXISTS Genres (
	Genres_id SERIAL PRIMARY KEY,
	Name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS Artists (
	Artists_id SERIAL PRIMARY KEY,
	Name VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS Albums (
	Albums_id SERIAL PRIMARY KEY,
	Name VARCHAR(80) NOT NULL,
	Year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Tracks (
	Tracks_id SERIAL PRIMARY KEY,
	Name VARCHAR(80) NOT NULL,
	Duration INTEGER NOT NULL,
	Albums_id INTEGER NOT NULL REFERENCES Albums(Albums_id)
);

CREATE TABLE IF NOT EXISTS Collections (
	Collections_id SERIAL PRIMARY KEY,
	Name VARCHAR(80) NOT NULL,
	Year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Genres_categories (
	Genres_id INTEGER NOT NULL REFERENCES Genres(Genres_id),
	Artists_id INTEGER NOT NULL REFERENCES Artists(Artists_id),
	CONSTRAINT genres_artists PRIMARY KEY (Genres_id, Artists_id)
);

CREATE TABLE IF NOT EXISTS Albums_categories (
	Artists_id INTEGER NOT NULL REFERENCES Artists(Artists_id),
	Albums_id INTEGER NOT NULL REFERENCES Albums(Albums_id),
	CONSTRAINT artists_albums PRIMARY KEY (Artists_id, Albums_id)
);

CREATE TABLE IF NOT EXISTS Tracks_categories (
	Tracks_id INTEGER NOT NULL REFERENCES Tracks(Tracks_id),
	Collections_id INTEGER NOT NULL REFERENCES Collections(Collections_id),
	CONSTRAINT tracks_collections PRIMARY KEY (Tracks_id, Collections_id)
);