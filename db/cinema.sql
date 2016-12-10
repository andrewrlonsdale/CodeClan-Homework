
DROP TABLE IF EXISTS tickets;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS films;


CREATE TABLE IF NOT EXISTS customers (
  id SERIAL4 primary key,
  name varchar(255),
  funds int4
);


CREATE TABLE IF NOT EXISTS films(
  id SERIAL4 primary key,
  title varchar(255),
  price int4
);

CREATE TABLE IF NOT EXISTS tickets(
  id SERIAL4 primary key,
  customer_id INT4 references customers(id)ON DELETE CASCADE,
  film_id INT4 references films(id) ON DELETE CASCADE 
);



INSERT INTO customers (name, funds) VALUES ('Fred',50 );
INSERT INTO customers (name, funds) VALUES ('Bob',10);
INSERT INTO customers (name, funds) VALUES ('Phil',9 ); 

INSERT INTO films (title, price) VALUES ('sully',8);
INSERT INTO films (title, price) VALUES ('fantastic beasts', 12);
INSERT INTO films (title, price) VALUES ('dr strange', 10);

INSERT INTO tickets (customer_id, film_id) VALUES (1, 1);
INSERT INTO tickets (customer_id, film_id) VALUES (2, 1);
INSERT INTO tickets (customer_id, film_id) VALUES (3, 3);


SELECT c.name AS customer_name, f.title AS film_title FROM customers c
INNER JOIN tickets t
ON c.id = t.customer_id
INNER JOIN films f
ON t.film_id = f.id