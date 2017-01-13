drop table if exists albums;
drop table if exists artists; 

create table artists(
  id serial8 primary key,
  name varchar(255)
);

create table albums(
  id serial8 primary key, 
  title varchar(255),
  genre varchar(255),
  artist_id int8 references artist(id)
  );

