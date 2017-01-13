-- Return ALL the data in the 'movies' table.

select * from movies;

-- Return ONLY the name column from the 'people' table

select name from people;

-- Return ONLY your name from the 'people' table.

select name from people where name = 'Andrew Lonsdale'; 

-- The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
Delete from movies where title = 'Batman Begins' ;

-- Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people (name) VALUES ('Beth');


-- Craig Morton, has decided to hijack our movie evening, Remove him from the table of people
Delete from people where name = 'Craig Morton';

-- Somehow the list of people includes two people named 'Andrew'. Change one entry to 'Andy' and leave the other entry as 'Andrew'

update people set name = 'Andy Guppy' where name = 'Andrew Guppy';


-- The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2016, '00:00');


-- The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 12:10 to 21:30


update movies set show_time = '00:00' where title = 'Guardians of the Galaxy';


  -- Extension
  -- Research how to delete multiple entries from your table in a single command.

  Delete from people where name like 'A%';

  Delete from people where name like '%n';

  delete from movies where title like '%man%';

    DELETE FROM movies WHERE year >=2012;

    DELETE FROM movies WHERE year <=2012;

    DELETE FROM movies WHERE year = 2014;


    DELETE FROM people WHERE id in (1, 3 ,5 ,19)

