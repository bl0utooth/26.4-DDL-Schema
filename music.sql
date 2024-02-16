-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL,
  artists TEXT[] NOT NULL,
  album TEXT NOT NULL,
  producers TEXT[] NOT NULL
);

INSERT INTO songs
  (title, duration_in_seconds, release_date, artists, album, producers)
VALUES
  ('MMMBop', 238, '04-15-1997', '{"Hanson"}', 'Middle of Nowhere', '{"Dust Brothers", "Stephen Lironi"}'),
  ('Bohemian Rhapsody', 355, '10-31-1975', '{"Queen"}', 'A Night at the Opera', '{"Roy Thomas Baker"}'),
  ('One Sweet Day', 282, '11-14-1995', '{"Mariah Cary", "Boyz II Men"}', 'Daydream', '{"Walter Afanasieff"}'),
  ('Shallow', 216, '09-27-2018', '{"Lady Gaga", "Bradley Cooper"}', 'A Star Is Born', '{"Benjamin Rice"}'),
  ('How You Remind Me', 223, '08-21-2001', '{"Nickelback"}', 'Silver Side Up', '{"Rick Parashar"}'),
  ('New York State of Mind', 276, '10-20-2009', '{"Jay Z", "Alicia Keys"}', 'The Blueprint 3', '{"Al Shux"}'),
  ('Dark Horse', 215, '12-17-2013', '{"Katy Perry", "Juicy J"}', 'Prism', '{"Max Martin", "Cirkut"}'),
  ('Moves Like Jagger', 201, '06-21-2011', '{"Maroon 5", "Christina Aguilera"}', 'Hands All Over', '{"Shellback", "Benny Blanco"}'),
  ('Complicated', 244, '05-14-2002', '{"Avril Lavigne"}', 'Let Go', '{"The Matrix"}'),
  ('Say My Name', 240, '11-07-1999', '{"Destiny''s Child"}', 'The Writing''s on the Wall', '{"Darkchild"}');

CREATE TABLE artists
(
  artist_id SERIAL PRIMARY KEY,
  artist_name TEXT NOT NULL
);

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL,
  album TEXT NOT NULL,
  producers TEXT[] NOT NULL
);

INSERT INTO artists (artist_name)
VALUES
  ('Hanson'),
  ('Queen'),
  ('Mariah Carey'),
  ('Boyz II Men'),
  ('Lady Gaga'),
  ('Bradley Cooper'),
  ('Nickelback'),
  ('Jay Z'),
  ('Alicia Keys'),
  ('Juicy J'),
  ('Katy Perry'),
  ('Christina Aguilera'),
  ('Maroon 5'),
  ('Avril Lavigne'),
  ('Destiny''s Child');

  INSERT INTO songs (title, duration_in_seconds, release_date, album, artist_id, producers)
VALUES
  ('MMMBop', 238, '1997-04-15', 'Middle of Nowhere', 1, '{"Dust Brothers", "Stephen Lironi"}'),
  ('Bohemian Rhapsody', 355, '1975-10-31', 'A Night at the Opera', 2, '{"Roy Thomas Baker"}'),
  ('One Sweet Day', 282, '1995-11-14', 'Daydream', 3, '{"Walter Afanasieff"}'),
  ('Shallow', 216, '2018-09-27', 'A Star Is Born', 4, '{"Benjamin Rice"}'),
  ('How You Remind Me', 223, '2001-08-21', 'Silver Side Up', 5, '{"Rick Parashar"}'),
  ('New York State of Mind', 276, '2009-10-20', 'The Blueprint 3', 6, '{"Al Shux"}'),
  ('Dark Horse', 215, '2013-12-17', 'Prism', 7, '{"Max Martin", "Cirkut"}'),
  ('Moves Like Jagger', 201, '2011-06-21', 'Hands All Over', 8, '{"Shellback", "Benny Blanco"}'),
  ('Complicated', 244, '2002-05-14', 'Let Go', 9, '{"The Matrix"}'),
  ('Say My Name', 240, '1999-11-07', 'The Writing''s on the Wall', 10, '{"Darkchild"}');