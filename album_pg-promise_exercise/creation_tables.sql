DROP TABLE track;
DROP TABLE album;
DROP TABLE artist;

CREATE TABLE artist
    (
        id SERIAL PRIMARY KEY,
        artist_name VARCHAR
    );

CREATE TABLE album 
    (
        id SERIAL,
        album_year INT,
        artist_ID INT NOT NULL REFERENCES artist(id),
        PRIMARY KEY(id, artist_ID)
    );

CREATE TABLE track
    (
        id SERIAL,
        album_ID INT NOT NULL REFERENCES album(id),
        track_duration TIME,
        PRIMARY KEY(id, album_ID)
    );

-- SELECT * FROM track;
-- SELECT * FROM album;
-- SELECT * FROM artist;