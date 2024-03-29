-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around TEXT NOT NULL,
  galaxy TEXT NOT NULL,
  moons TEXT[]
);

INSERT INTO planets
  (name, orbital_period_in_years, orbits_around, galaxy, moons)
VALUES
  ('Earth', 1.00, 'The Sun', 'Milky Way', '{"The Moon"}'),
  ('Mars', 1.88, 'The Sun', 'Milky Way', '{"Phobos", "Deimos"}'),
  ('Venus', 0.62, 'The Sun', 'Milky Way', '{}'),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', '{"Naiad", "Thalassa", "Despina", "Galatea", "Larissa", "S/2004 N 1", "Proteus", "Triton", "Nereid", "Halimede", "Sao", "Laomedeia", "Psamathe", "Neso"}'),
  ('Proxima Centauri b', 0.03, 'Proxima Centauri', 'Milky Way', '{}'),
  ('Gliese 876 b', 0.23, 'Gliese 876', 'Milky Way', '{}');

  CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around TEXT NOT NULL,
  galaxy TEXT NOT NULL,
  moons TEXT[]
);

CREATE TABLE discovery
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  discovery_year INTEGER NOT NULL
);

INSERT INTO planets (name, orbital_period_in_years, orbits_around, galaxy, moons)
VALUES
  ('Earth', 1, 'Sun', 'Milky Way', '{"Moon"}'),
  ('Mars', 1.88, 'Sun', 'Milky Way', '{"Phobos", "Deimos"}'),
  ('Jupiter', 11.86, 'Sun', 'Milky Way', '{"Io", "Europa", "Ganymede", "Callisto"}'),
  ('Saturn', 29.46, 'Sun', 'Milky Way', '{"Titan", "Enceladus", "Mimas"}');

INSERT INTO discovery (name, discovery_year)
VALUES
  (1, 0), 
  (2, 1659),
  (3, 1610), 
  (4, 1610); 