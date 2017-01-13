DROP TABLE IF EXISTS "attendances";
DROP TABLE IF EXISTS "movies";
DROP TABLE IF EXISTS "people";

CREATE TABLE movies (
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255),
  year INT,
  show_time VARCHAR(255)
);

CREATE TABLE people (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE attendances (
  id SERIAL8 PRIMARY KEY,
  person_id INT REFERENCES people(id) ON DELETE CASCADE,
  movie_id INT REFERENCES movies(id) ON DELETE CASCADE
);

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '15:40');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '23:45');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '17:45');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '14:40');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '17:05');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '12:30');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '18:00');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '18:55');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '16:30');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '19:20');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '12:10');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '23:40');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '18:20');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '22:00');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '16:30');

INSERT INTO people (name) VALUES ('James Annal');
INSERT INTO people (name) VALUES ('Harrison Booth');
INSERT INTO people (name) VALUES ('Graeme Cameron');
INSERT INTO people (name) VALUES ('Sean Fealy');
INSERT INTO people (name) VALUES ('Julia Franzoi');
INSERT INTO people (name) VALUES ('Ben Frith');
INSERT INTO people (name) VALUES ('Andrew Guppy');
INSERT INTO people (name) VALUES ('Nina Kahr');
INSERT INTO people (name) VALUES ('Camden Lohman');
INSERT INTO people (name) VALUES ('Andrew Lonsdale');
INSERT INTO people (name) VALUES ('Rory MacDonald');
INSERT INTO people (name) VALUES ('Steven Noble');
INSERT INTO people (name) VALUES ('Amy Robinson');
INSERT INTO people (name) VALUES ('David Scott');
INSERT INTO people (name) VALUES ('Lorna Sherwood');
INSERT INTO people (name) VALUES ('Peter Trizuliak');
INSERT INTO people (name) VALUES ('Blaise Wielk');
INSERT INTO people (name) VALUES ('Kristie Yorkston');
INSERT INTO people (name) VALUES ('Craig Morton');