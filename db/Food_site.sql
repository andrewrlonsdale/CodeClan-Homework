DROP TABLE Country;
DROP TABLE Food;

CREATE TABLE Food (
  id serial4 primary key,
  name varchar(255),
  country varchar(255),
  spicy varchar(255),
  ingredients text,
  recipe text
);

CREATE TABLE Country (
  id serial4 primary key,
  food_id int4 references Food(id),
  c_name varchar(255)
);